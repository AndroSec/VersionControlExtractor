package dk;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import org.xml.sax.SAXException;

/*Todo
 * 	Logging
 * 	Tie into DB
 */


// Application will parse the .xml file returned from apkparser. Will then input into the sqliteDB
// Usage: apkParserMain <input.apk>

// 1) Run APK analyzer on the .apk file
// 2) Run APK Parser command on the .apk file
// 3) Input the information into the SQLiteDB

/*Helpful possible usage
 * Dan-macbook:src dan$ pwd
/Users/dan/Documents/workspace/ProjectKrutz/tools/CustomJava/src
Dan-macbook:src dan$ javac dk/*.java; java -classpath ".:sqlite-jdbc-3.7.2.jar" dk/apkparserMain /Users/dan/Desktop/testAPKInput/
 */


public class apkparserMain {
	util u = new util();

	final String DBLocation="";
	final String ManifestInputLocation="testAPKfiles";
	
	public static void main(String[] args) {
		//System.out.println("dan");
		apkparserMain am = new apkparserMain();
		am.Run();
	}
	
	public void Run(){	
		File folder = new File(ManifestInputLocation);
		File[] listOfFiles = folder.listFiles();

		    for (int i = 0; i < listOfFiles.length; i++) {
		    	
		      if (listOfFiles[i].isFile()) {
		        System.out.println("File " + listOfFiles[i].getName());
		      } else if (listOfFiles[i].isDirectory()) {
		        //System.out.println("Directory " + listOfFiles[i].getName());
		    	  // now look into the app directory
		  			File folder_app = new File(listOfFiles[i].getAbsolutePath());
		  			File[] listOfFiles_app = folder_app.listFiles();
		  			 for (int ii = 0; ii < listOfFiles_app.length; ii++) {
		  				  //System.out.println("File " + listOfFiles_app[ii].getName());
		  				//System.out.println("AppName: " + listOfFiles[i].getName());
		  				//System.out.println("CommitName: " + listOfFiles_app[ii].getName());
		  				//System.out.println(listOfFiles_app[ii].getAbsolutePath());
		  				 // check to make sure a manifest file exists
			  			File manifestFile = new File(listOfFiles_app[ii].getAbsolutePath()+"/AndroidManifest.xml");
			  			//System.out.println(manifestFile.exists());
			  			if(!manifestFile.exists()){
			  				// It doesn't exist, so log a message
			  				System.out.println("----No Manifest file found for: ");
			  				System.out.println("--------AppName: " + listOfFiles[i].getName());
			  				System.out.println("--------CommitName: " + listOfFiles_app[ii].getName());
			  				System.out.println("--------" + listOfFiles_app[ii].getAbsolutePath());
			  			}else{
			  				//System.out.println("Analze" + listOfFiles_app[ii].getName());
			  				analyzeManifestFile(listOfFiles_app[ii].getName(), listOfFiles[i].getName(),listOfFiles_app[ii].getAbsolutePath() );
			  			}
			  				
		  					//System.out.println("*****");
		  					
		  				 
		  			 }
		    	  
		    	  
		      }
		    }
	}
	
	public void analyzeManifestFile(String commitFolderName, String commitAppname, String absoluteFilePath){
		
		System.out.println("analyzemanifest file" + commitAppname);
		
		
	}
	
	

}