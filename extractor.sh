#!/bin/bash          

	# Author: Daniel E. Krutz
	# Description: Extracts all versions of AndroidManifest.xml files from all supplied GIT repos.

	### File to Search For
	searchFile=AndroidManifest.xml

	# Script location. Must be placed near top of script
	MainScriptLoc=`pwd`

	# main output location
	mainOutput=$MainScriptLoc/mainOutput/

	# Location of repo to scan
	projectFiles=../repos

	
	db=$MainScriptLoc/db/AndrosecDatabase.sqlite

	rm -rf $mainOutput
	mkdir -p $mainOutput

	### Output Location
	#mkdir -p Output

	### Logging
	mkdir -p logs/
	date1=$(date +"%s") ## Start date of the script
	logLocation=logs/extractor.log
	rm -f $logLocation ## Clear the log file if it exists
	touch $logLocation
	echo "Start Extractor: " `date` >> $logLocation
	
	#############################################
	##### Functions

	### Determine how many words are in a string
	howManyWordsInString() { echo $#; }


## Just do temp
echo "Temp - Removing all db information"
sqlite3 $db "delete from Android_Manifest_commitinfo"	
sqlite3 $db "delete from Android_Manifest_Appinfo"	
sqlite3 $db "delete from Android_Manifest_Permission"	
sqlite3 $db "delete from Android_Manifest_Permission_join"	

	# Loop through all of the project files
	FILES=$(find $projectFiles -maxdepth 1 -mindepth 1 -type d)
	for f in $FILES
	do
  		echo "Start Analyzing File $f: " `date` >> $logLocation
  		## Get the app Name
		appName=${f//$projectFiles/""}
		appName=${appName//\//""}
  		#echo $appName

	    ## Check to see if AppInfo exists & insert it if needed
	    AppInfoCount=`sqlite3 $db "SELECT count(*) FROM Android_Manifest_AppInfo WHERE AppName='$appName';"`  
		if [[ $AppInfoCount -eq 0 ]]; then
#			echo "Enter Android_Manifest_AppInfo: " $appName
			echo "***Android_Manifest_AppInfo Insert: $appName: " `date` >> $logLocation
			sqlite3 $db  "INSERT INTO Android_Manifest_AppInfo (AppName) VALUES ('$appName');"
		fi

		AppID=`sqlite3 $db "SELECT AppID FROM Android_Manifest_AppInfo WHERE AppName='$appName';"`

		# Find the file location
		FileLoc=`find $f -name AndroidManifest.xml`

		### Check to see if the AndroidManifestFile is found
		if [ -z "$FileLoc" ]; then
			echo "No file found for $appName"
			echo "***No Android Manifest File found for: $appName: " `date` >> $logLocation
		else
			echo "***Android Manifest File found for: $appName - $FileLoc: " `date` >> $logLocation
			
			## Move to the appropriate directory
			cd $(dirname $FileLoc)

			## Remove temp file if it exists
			##	Done here to leave it from troubleshooting after run
			rm -f temp2.txt

			### A file and not variable is used since it is easier to parse
			git log --follow AndroidManifest.xml>>temp2.txt

			COUNTER=0
			LineCounter=0

			# Read through the filename
			while read p; do
				LineCounter=$[LineCounter + 1]
			 	### Get the commit hashes
				if [ "${p/commit}" != "$p" ] ; then
					p=${p//commit/""}	
					Commit_Val=$p ### Just done to make variables easier to understand by developer	
					Commit_Val=${Commit_Val// /""}	## Remove spaces

					## Author Info
					## 		Kind of an ugly way to do things, but it works
					tempLine=$((LineCounter + 1)) 
					AuthorInfo=`sed -n "${tempLine}p" < temp2.txt`

					#### Split up the information to get author name and author email
					# Remove the text Author:
					AuthorInfo=${AuthorInfo//Author:/""}

					IFS='<' read -a array <<< "$AuthorInfo"

					Author_Name="${array[0]}"
					Author_Name=${Author_Name// /""} 

					Author_Email="${array[1]}"
					Author_Email=${Author_Email//>/""} 
			
					## Date info
					tempLine=$((LineCounter + 2)) 
					DateInfo=`sed -n "${tempLine}p" < temp2.txt`
					DateInfo=${DateInfo//Date: /""} 
					#DateInfo=${DateInfo// /""} 
					#echo $DateInfo

					## Message info
					tempLine=$((LineCounter + 4)) 
					MessageInfo=`sed -n "${tempLine}p" < temp2.txt`
					#echo $MessageInfo


					MessageInfo=${MessageInfo// /""} 

	  				### Ensure that only the commit_hash are added to array, not comments
					wordcount=`howManyWordsInString $p`
					if [ "$wordcount" -eq 1 ] ; then

						CommitCount=`sqlite3 $db "SELECT count(*) FROM Android_Manifest_commitinfo WHERE AppID='$AppID' and commit_val='$Commit_Val';"`  

						### Check to see if the commit information had yet been entered
						if [[ $CommitCount -eq 0 ]]; then
							COUNTER=$[COUNTER + 1]
							echo "***Android_Manifest_commitinfo Insert: $appName $Commit_Val " `date` >> $MainScriptLoc/$logLocation
							echo "Enter Initial Commit info for: " $appName "-" $Commit_Val
							sqlite3 $db "INSERT INTO Android_Manifest_commitinfo (Commit_Val, AppID, Commit_Order, Author_Name, Author_Email, Commit_Date, Commit_Message) VALUES ('$Commit_Val', $AppID, $COUNTER, '$Author_Name', '$Author_Email', '$DateInfo', '$MessageInfo');"
						fi

					
						## Pull the value from the GIT repo
						git checkout $Commit_Val .
	
						mkdir -p $mainOutput/$appName/$Commit_Val

						## Move the pulled manifest file to the main output location
						cp AndroidManifest.xml $mainOutput/$appName/$Commit_Val	
					fi
				fi 

			done <temp2.txt
		fi
		# Revert back to the main script location
		cd $MainScriptLoc


		done

	diff=$(($date2-$date1))
	echo "Total Running Time $(($diff / 60)) minutes and $(($diff % 60)) seconds."  >> $logLocation
	echo "End:" `date` >> $logLocation




#### Todo
# Commit message should be able to handle multiple lines
# Commit_Order is reversed
# Total running time is off

### To check and make sure that all values are being logged properly

