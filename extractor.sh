#!/bin/bash          


### Main File Location
##		Will have to loop through all of this
inputLoc=testGit/sm_Tinfoil-Facebook/

### File to Search For
searchFile=AndroidManifest.xml

### Output Location
mkdir -p Output

# Script location
##	Used to revert back to main script location after running
MainScriptLoc=`pwd`

#############################################
##### Functions



############################################# 


# Find the file location
FileLoc=`find $inputLoc -name AndroidManifest.xml`



# Log all versions of the file
cd $(dirname $FileLoc)

#ManifestCommit=`git log --follow AndroidManifest.xml` 
	#echo $ManifestCommit



### A file and not variable is used since it is easier to parse
git log --follow AndroidManifest.xml>>temp2.txt

# Read through the filename
while read p; do
 
	if [ "${p/commit}" != "$p" ] ; then
	#  echo ""
	#else
		

		#wc | ${p}

		#wc -l | $p
			#  echo "was found in ${p}"
			#echo $p
			#echo "$p" | wc -w

			# fix this
			#wordCount=`echo "$p" | wc -w`
			#echo $wordCount

			## Check to make sure the output is not more than 2 words
			#if [ "${wordCount}" == "2"] ; then
			#if [ "$wordCount" == 2 ] ; then
			#	echo $p


			#fi

			###
			#echo $p
			p=${p//commit/""}
			echo $p
	fi


  #echo $p
  	## Check to see if the line contains commit
  #	if [[ "commit" =~ "$p" ]]; then
  #  	echo "'$string' contains '$substring'";
#	else
#    	echo "'$string' does not contain '$substring'";
#	fi
done <temp2.txt





#	rm temp2.txt


# Revert back to the main script location
cd $MainScriptLoc




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



