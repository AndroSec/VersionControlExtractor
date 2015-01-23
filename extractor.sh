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

### 

# Find the file location
FileLoc=`find $inputLoc -name AndroidManifest.xml`



# Log all versions of the file
cd $(dirname $FileLoc)

ManifestCommit=`git log --follow AndroidManifest.xml` 
	#echo $ManifestCommit

# Revert back to the main script location
cd $MainScriptLoc


## Parse out all commit values and store in local array



