#!/bin/bash          

###	Leaving as an external file for now in case it needs to be refactored or added to.
###		My goal is to make these into seperate, reusable components.

	apk_Conv_dir=decompile/tools/

	### Pass in information about file to be deompiled

	### Information to be passed in
	#echo $1 # AppID
	#echo $2	# VersionID
	#echo $3 # apkFile
	#echo $4	# DecompileOuput

	java -jar $apk_Conv_dir/apktool.jar d -f $3 $4



