#!/bin/bash          


ls
### Main File Location
##		Will have to loop through all of this
#inputLoc=testGit/sm_Tinfoil-Facebook/
inputLoc=testGit/dantest/

### File to Search For
searchFile=AndroidManifest.xml

# main output location
### FIX THIS - Make it automatic
mainOutput=/Users/dxkvse/Desktop/VersionControlExtractor/mainOutput/

rm -rf $mainOutput
mkdir -p $mainOutput


### Output Location
#mkdir -p Output

# Script location
##	Used to revert back to main script location after running
MainScriptLoc=`pwd`

### Database namew & location where information will be written to
# 

#############################################
##### Functions

### Determine how many words are in a string
howManyWordsInString() { echo $#; }



### Get information about a specific commit
getCommitInfo() {

								# testGit/sm_Tinfoil-Facebook//Tinfoil-for-Facebook/src/main
								#echo hi
								#echo $1
								#pwd
								#	mkdir -p $1
									#echo $1 $2
								#	echo $2
									
								#	pwd
									## complains about errors, but I think it still works


									#git cherry-pick -r $1 
									#git checkout --theirs -- AndroidManifest.xml  ### Pulls in their version of file
								#	git checkout --theirs -- AndroidManifest.xml  ### Pulls in their version of file
									#mkdir -p $mainOutput/Tinfoil-for-Facebook/$1
									#git checkout $1
									#git merge -s ours
									


								#git reset --merge
	git checkout $1 .
	mkdir -p $mainOutput/danTest/$1
								#cp AndroidManifest.xml $mainOutput/Tinfoil-for-Facebook/$1


	## Move the ManifestFile to another location
	cp AndroidManifest.xml $mainOutput/danTest/$1
	



}






############################################# 


# Find the file location
FileLoc=`find $inputLoc -name AndroidManifest.xml`

# Log all versions of the file
cd $(dirname $FileLoc)



## Remove temp file if it exists
##	Done here to leave it from troubleshooting after run
rm -f temp2.txt

#ManifestCommit=`git log --follow AndroidManifest.xml` 
	#echo $ManifestCommit



### A file and not variable is used since it is easier to parse
git log --follow AndroidManifest.xml>>temp2.txt


COUNTER=0

# Read through the filename
while read p; do
 


 	### Get the commit hashes
	if [ "${p/commit}" != "$p" ] ; then
		p=${p//commit/""}
    		### Ensure that only the commit_hash are added to array, not comments
    		###	
			wordcount=`howManyWordsInString $p`
			if [ "$wordcount" -eq 1 ] ; then
				#echo ""
				## Add item to array
				#echo $p
				getCommitInfo $p #$(dirname $FileLoc)
#				exit
				#commitArray+=($p)
			fi
	fi 

done <temp2.txt




# 785b25cdb4c69e40b048f6eccd399969631f87f6
#getCommitInfo 785b25cdb4c69e40b048f6eccd399969631f87f6






# exit

### Loop through the contents of the commit messages array
COUNTER=0
for item in "${commitArray[@]}"
	do
		# Leave in for debugging
    	let COUNTER=COUNTER+1
    	#echo "$COUNTER $item"

    	## Cherry pick each commit
    	#git cherry-pick $item



done


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



