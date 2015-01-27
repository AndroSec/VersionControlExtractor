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
#date1=$(date +"%s") ## Start date of the script
#logLocation=logs/toolsScript.log
#touch $logLocation
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


### MAKE THIS TO BE ONE FUNCTION TO ADD ALL THE ITEMS FROM A "COMMIT"
### Get information about a specific commit
getCommitInfo() {

	appName=$1
	Commit_Val=$2
	CommitOrder=$3
	appID=$4

	### Add the commit info to the database
	## First check to see if it exists, and if so then update the commit info
	CommitCount=`sqlite3 $db "SELECT count(*) FROM Android_Manifest_commitinfo WHERE AppID='$appID' and commit_val='$Commit_Val';"`  

	### Check to see if the commit information had yet been entered
	if [[ $CommitCount -eq 0 ]]; then
		echo "Enter Initial Commit info for: " $appName "-" $Commit_Val
		sqlite3 $db "INSERT INTO Android_Manifest_commitinfo (Commit_Val, AppID, Commit_Order) VALUES ('$Commit_Val', $appID, $CommitOrder);"

	fi

	git checkout $2 .
	mkdir -p $mainOutput/$1/$2

	## Move the ManifestFile to another location
	cp AndroidManifest.xml $mainOutput/$1/$2	
}






############################################# 





	# Loop through all of the project files
	projectFiles=inputGit

	#FILES=$projectFiles/*
	#for f in $FILES
	#do

	FILES=$(find $projectFiles -maxdepth 1 -mindepth 1 -type d)
	for f in $FILES
	do
  		
  		## Get the app Name
		appName=${f//$projectFiles/""}
		appName=${appName//\//""}
  		#echo $appName

	    ## Check to see if AppInfo exists & insert it if needed



	    AppInfoCount=`sqlite3 $db "SELECT count(*) FROM Android_Manifest_AppInfo WHERE AppName='$appName';"`  
		if [[ $AppInfoCount -eq 0 ]]; then
			echo "Enter Android_Manifest_AppInfo: " $appName
			sqlite3 $db  "INSERT INTO Android_Manifest_AppInfo (AppName) VALUES ('$appName');"
		fi

		AppID=`sqlite3 $db "SELECT AppID FROM Android_Manifest_AppInfo WHERE AppName='$appName';"`


		## Do  for every folder in the input directory
		### put the for loop here




		# Find the file location
		FileLoc=`find $f -name AndroidManifest.xml`

		# Log all versions of the file
		cd $(dirname $FileLoc)

			## Remove temp file if it exists
			##	Done here to leave it from troubleshooting after run
		rm -f temp2.txt



			#ManifestCommit=`git log --follow AndroidManifest.xml` 
				#echo $ManifestCommit

			### A file and not variable is used since it is easier to parse
		git log --follow AndroidManifest.xml>>temp2.txt

		COUNTER=1

		# Read through the filename
		while read p; do

		 	### Get the commit hashes
			if [ "${p/commit}" != "$p" ] ; then
				p=${p//commit/""}
		    	### Ensure that only the commit_hash are added to array, not comments
		    	###	
				wordcount=`howManyWordsInString $p`
				if [ "$wordcount" -eq 1 ] ; then


					#echo $(dirname $FileLoc)

					## Add the Commit Info to SQLite


					getCommitInfo $appName $p $COUNTER $AppID #$(dirname $FileLoc)
					#commitArray+=($p)
				fi
			fi 

		done <temp2.txt





	### Loop through the contents of the commit messages array
	#COUNTER=0
	#for item in "${commitArray[@]}"
	#	do
			# Leave in for debugging
	 #   	let COUNTER=COUNTER+1
	    	#echo "$COUNTER $item"

	    	## Cherry pick each commit
	    	#git cherry-pick $item



	#done


	# Revert back to the main script location
	cd $MainScriptLoc


	done



  

### Now analyze all of the output AndroidManifestFiles to gather information from them.



## Parse out all commit values and store in local array
#echo $ManifestCommit
#IN="bla@some.com;john@home.com"

#arr=$(echo $ManifestCommit | tr "commit" "\n")

#for x in $arr
#do
#    echo "> [$x]"
#done






#### Todo
# Logging
# Author, Date, Commit message



