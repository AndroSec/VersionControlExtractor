#!/bin/bash    

### Description
##		Get the permission information from each APK file.
##		This is designed to be used with 'normal' .apk files.
##		This will not completely decompile the apk file.

	## Location of APkFiles files
	apkInputDir=../apks/

	## DB location
	#DBName=db/AndrosecDatabase.sqlite
	### FIX THIS
	DBName=/Users/dxkvse/git/Research/VersionControlExtractor/db/AndrosecDatabase.sqlite


	## Convert location
	decompile=Decompile/decompileAPK.sh

	## Decompile outputDir
	#decompile_output=DOutput

	## FIX THIS
	decompile_output=/Users/dxkvse/git/Research/VersionControlExtractor/DOutput/


	## Create the Decompile output Dir and remove any files if they are in it.
	mkdir -p $decompile_output
	rm -rf $decompile_output/*

	#### Loop through each APK file

	FILES=$(find $apkInputDir -maxdepth 1 -type f  -name '*.apk')
	for f in $FILES
	do
		filename=$(basename "$f")

		#### There must be a cleaner way to to do this
		part1=`echo $filename | awk -F'_' '{print $1}'`
		part2=`echo $filename | awk -F'_' '{print $2}'`
		part2=${part2//.apk/""}
	
		### Now get the information from the database
		appID=`sqlite3 $DBName "SELECT appID FROM appdata WHERE name='$part1';"`

		### Find the versionID based on Part 2 
		versionID=`sqlite3 $DBName "SELECT versionID FROM version WHERE appID =$appID and build_number=$part2;"`

		#echo $appID
		#echo $part2
		#echo $versionID

		#### Now reverse enginer the file
		./$decompile $appID $versionID $f $decompile_output

		cd AndroidManifestParser/src/
		echo "---->Analyzing" $f
		

		###	 These show the expected input to the Java portion of the app
		#String DBLocation = args[0].toString();
		#String ManifestInputLocation = args[1].toString();
		#int appID = Integer.parseInt(args[2]);
		#int versionID = Integer.parseInt(args[3]);

		#javac dk/*.java;
		#java -classpath ".:sqlite-jdbc-3.7.2.jar" dk/manifestParser_Individual DB Manifest 1 2
		

		#### javac dk/*.java; java -classpath ".:sqlite-jdbc-3.7.2.jar" dk/apkparserMain ../../../$f

		javac dk/*.java; java -classpath ".:sqlite-jdbc-3.7.2.jar" dk/manifestParser_Individual $DBName $decompile_output $appID $versionID


		cd ../../






		### Clean up everything
		#rm -rf $decompile_output/*

	done
	


	### Todo