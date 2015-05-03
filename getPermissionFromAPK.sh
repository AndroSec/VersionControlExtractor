#!/bin/bash    

### Description
##		Get the permission information from each APK file

	## Location of APkFiles files
	apkInputDir=../apks_small/

	## DB location
	DBName=db/AndrosecDatabase.sqlite

	## Convert location
	decompile=Decompile/decompileAPK.sh

	## Decompile outputDir
	decompile_output=DOutput

	## Create the Decompile output Dir and remove any files if they are in it.
	mkdir -p $decompile_output
	rm -rf $decompile_output/*

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

		#echo $appID
		#echo $part2
		#echo $versionID

		#### Now reverse engineer the file
#		./$decompile $appID $versionID $f $decompile_output

		### Analyze the output of the given dir
		#cd tools/CustomJava/src/
		#echo "---->Analyzing" $f
		#javac dk/*.java; java -classpath ".:sqlite-jdbc-3.7.2.jar" dk/apkparserMain ../../../$f
		#cd ../../../

		#cd tools/CustomJava/src/
		cd AndroidManifestParser/src/
		echo "---->Analyzing" $f
		#javac dk/*.java; java -classpath ".:sqlite-jdbc-3.7.2.jar" dk/apkparserMain ../../../$f
		#javac dk/*.java; java -classpath ".:sqlite-jdbc-3.7.2.jar" dk/apkparserMain ../../../$f
		javac dk/*.java
		java -classpath ".:sqlite-jdbc-3.7.2.jar" dk/manifestParser_Individual Hi dan ../../../$f
		#java -classpath ".:sqlite-jdbc-3.7.2.jar" dk/manifestParser_Individual $DBName $decompile_output ../../../$f

		#java -classpath ".:sqlite-jdbc-3.7.2.jar" dk/manifestParser_Individual #$DBName $decompile_output 1 2



#		cd ../../../






		### Clean up everything
#		rm -rf $decompile_output/*

	done
	


	### Todo