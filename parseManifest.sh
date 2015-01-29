#!/bin/bash    

### Description
##		Will analyze an AndroidManifest.xml file and record 
## 		Usage ./parseManifest.sh <commitID> <filepath>/<filename>

	## Location of output files
	outputFiles=mainOutput/

	MainScriptLoc=`pwd`

	## DB location
	db=$MainScriptLoc/db/AndrosecDatabase.sqlite



	### Logging
	mkdir -p logs/
	date1=$(date +"%s") ## Start date of the script
	logLocation=logs/parseManifest.log
	rm -f $logLocation ## Clear the log file if it exists
	touch $logLocation
	echo "Start Parsemanifest: " `date` >> $logLocation
	



	## Function to parse an AndroidManifest.xml file
	function parseXMLFile { # appName, commit_ID, full path
    	#echo $1 $2 $3
    	echo "Begin Analyzing: " $3
    	cat $3







    }


	## Loop through all main output files
	FILES=$(find $outputFiles -maxdepth 1 -mindepth 1 -type d)
	for f in $FILES
	do
		#echo $f

		## Now loop through all of the sub folders
		FILES=$(find $f -maxdepth 1 -mindepth 1 -type d)
		for f2 in $FILES
		do
			appName=$(dirname $f2)
			appName=${appName/${outputFiles}/ /""}
			appName=${appName//[-.\/_]/} # remove special characthers from the string
			Commit_Folder=$(basename $f2)
			### Get the path to the manifest file in each sub folder
			FILES=$(find $f2 -maxdepth 1 -mindepth 1 -type f)
			for f3 in $FILES
			do
				## Make sure that the file is named AndroidManifest.xml
				if [ $(basename $f3) = "AndroidManifest.xml" ] ; then
					#echo $f3

					### Get the CommitID from Android_Manifest_commitinfo
					Commit_ID=`sqlite3 $db "SELECT Commit_ID FROM Android_Manifest_commitinfo WHERE Commit_val='$Commit_Folder';"`

					#echo $Commit_ID
					if [[ $Commit_ID = "" ]]; then
						#This should not occur unless record is not found in DB
						echo "Commit_Folder: " $Commit_Folder " not found" 
						echo "***Commit_Folder: " $Commit_Folder " not found " `date` >> $logLocation
					else
						echo "*** Analyze CommitFolder" $Commit_Folder "->" $Commit_ID `date` >> $logLocation
						parseXMLFile $appName $Commit_ID $f3
						exit
					fi
					### If not found, log and output an error message to the screen
				fi
			done
		done

	done


	diff=$(($date2-$date1))
	echo "Total Running Time $(($diff / 60)) minutes and $(($diff % 60)) seconds."  >> $logLocation
	echo "End:" `date` >> $logLocation



# Todo
#	Make sure parameter is passed in
#	Logging