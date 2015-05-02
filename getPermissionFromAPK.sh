#!/bin/bash    

### Description
##		Get the permission information from each APK file

	## Location of APkFiles files
	apkInputDir=../apks_small/

	## DB location
	DBName=db/AndrosecDatabase.sqlite

	## Convert location
	decompile=Decompile/decompileAPK.sh

	#cd $apkInputDir
	#ls


	#### Loop through each APK file

	## Find the AppID, VersionID from the database
	##		Create function to do this

	## If found, unzip the file and decompile the contents
	##		Create external function to do this

	## Find the manifest file and analyze the contents of it
	

	#$$$$$$$$$
	FILES=$(find $apkInputDir -maxdepth 1 -type f  -name '*.apk')
	for f in $FILES
	do
		filename=$(basename "$f")


		#echo $filename | awk -F'_' '{print $1,$2}'

		#### There is a cleaner way to to do this
		part1=`echo $filename | awk -F'_' '{print $1}'`
		part2=`echo $filename | awk -F'_' '{print $2}'`
		part2=${part2//.apk/""}
	
		### Now get the information from the database
		appID=`sqlite3 $DBName "SELECT appID FROM appdata WHERE name='$part1';"`


		### Find the versionID based on Part 2 
		versionID=`sqlite3 $DBName "SELECT versionID FROM version WHERE appID =$appID and build_number=$part2;"`

		echo $appID
		echo $versionID

		#### Now convert the file
		./$decompile $appID $versionID $f

	done
	


	### Todo