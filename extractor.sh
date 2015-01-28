#!/bin/bash          

	### Main File Location
	##		Will have to loop through all of this
	#inputLoc=testGit/sm_Tinfoil-Facebook/


	### NEED A WAY TO FIGURE THIS OUT
	#appName=danTest
	#inputLoc=testGit/$appName/

	### File to Search For
	searchFile=AndroidManifest.xml

	# Script location
	MainScriptLoc=`pwd`

	### FIX THIS - Make it automatic
	#scriptPath=/Users/dxkvse/Desktop/VersionControlExtractor/

	# main output location
	mainOutput=$MainScriptLoc/mainOutput/

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
	#echo "Start Getting Signing Key:" `date` >> $logLocation
	#### Log the conclusion time
	#date2=$(date +"%s") 
	#diff=$(($date2-$date1))
	#echo "toolsScript Total Running Time $(($diff / 60)) minutes and $(($diff % 60)) seconds."  >> $logLocation
	#echo "toolsScript End:" `date` >> $logLocation

	### Database namew & location where information will be written to
	# 

	#############################################
	##### Functions

	### Determine how many words are in a string
	howManyWordsInString() { echo $#; }



## Just do temp
sqlite3 $db "delete from Android_Manifest_commitinfo"	


	# Loop through all of the project files
	projectFiles=inputGit

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


		## Do  for every folder in the input directory
		### put the for loop here

		# Find the file location
		FileLoc=`find $f -name AndroidManifest.xml`

		### Check to see if the File is found

		#echo $FileLoc
		#if [ $FileLoc="" ] ; then
		if [ -z "$FileLoc" ]; then
			echo "No file found for $appName"
			echo "***No Android Manifest File found for: $appName: " `date` >> $logLocation

		else
			echo "***Android Manifest File found for: $appName - $FileLoc: " `date` >> $logLocation
#			echo "File Found for $appName"
			# Log it
	
			# Log all versions of the file
			cd $(dirname $FileLoc)

			## Remove temp file if it exists
			##	Done here to leave it from troubleshooting after run
#			rm -f temp2.txt

			### A file and not variable is used since it is easier to parse
#			git log --follow AndroidManifest.xml>>temp2.txt

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
					#echo $AuthorInfo


					#### Split up the information to get author name and author email
					Author_Name="tempName"
					Author_Email="tempEmail"

					## Date info
					tempLine=$((LineCounter + 2)) 
					DateInfo=`sed -n "${tempLine}p" < temp2.txt`
					#echo $DateInfo

					## Message info
					tempLine=$((LineCounter + 4)) 
					MessageInfo=`sed -n "${tempLine}p" < temp2.txt`
					#echo $MessageInfo

	  				### Ensure that only the commit_hash are added to array, not comments
					wordcount=`howManyWordsInString $p`
					if [ "$wordcount" -eq 1 ] ; then

						#echo $(dirname $FileLoc)
						## Add the Commit Info to SQLite

						#getCommitInfo $appName $p $COUNTER $AppID $Author_Name $Author_Email $DateInfo $MessageInfo #$(dirname $FileLoc)
						#commitArray+=($p)



						CommitCount=`sqlite3 $db "SELECT count(*) FROM Android_Manifest_commitinfo WHERE AppID='$AppID' and commit_val='$Commit_Val';"`  
						#echo $CommitCount

						### Check to see if the commit information had yet been entered
						if [[ $CommitCount -eq 0 ]]; then
							COUNTER=$[COUNTER + 1]
	#						echo "Enter Initial Commit info for: " $appName "-" $Commit_Val
	#						sqlite3 $db "INSERT INTO Android_Manifest_commitinfo (Commit_Val, AppID, Commit_Order, Author_Name, Author_Email, Commit_Date, Commit_Message) VALUES ('$Commit_Val', $AppID, $COUNTER, '$Author_Name', '$Author_Email', '$DateInfo', '$MessageInfo');"
						fi

						#echo $appName

		#echo $Commit_Val
					
	
						git checkout $Commit_Val .
	
						mkdir -p $mainOutput/$appName/$Commit_Val


						#echo $mainOutput/$appName/$Commit_Val


					
	#pwd
						## Move the ManifestFile to another location
						cp AndroidManifest.xml $mainOutput/$appName/$Commit_Val	

						## Copies the manifest file to the local folder with the 
		#				cp AndroidManifest.xml $mainOutput/$appName/$Commit_Val	

						## Move the created folder to the main output directory
					


exit

			### Add logging
			### test


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
# Logging
# Author, Date, Commit message
# Parse the date/time information

### To check and make sure that all values are being logged properly

