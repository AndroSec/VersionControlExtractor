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

// THESE ITEMS NEED TO BE UPDATED FOR THE FINAL VERSION
	final String DBLocation="";
	final String ManifestInputLocation="testAPKfiles";
	
	// List of all collected manifestItems
	private List<manifestItem>MasterManifestList=new ArrayList<manifestItem>();
	
	public static void main(String[] args) {
		//System.out.println("dan");
		apkparserMain am = new apkparserMain();
		am.Run();
	}
	
	// Once things are running, clean this function up
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
			  				analyzeManifestFile(listOfFiles_app[ii].getName(), listOfFiles[i].getName(),listOfFiles_app[ii] );
			  			}
			  				
		  					//System.out.println("*****");
		  					
		  				 
		  			 }
		    	  
		    	  
		      }
		    }
		    
		    
		    // once the list is build then cycle through it
		    //System.out.println(MasterManifestList.size());
		    
		 // Loop through objects in the list
		    /*
		 			for (int i = 0; i < MasterManifestList.size(); i++){
		 				System.out.println(MasterManifestList.get(i).getManifestFileName());
		 				try {
		 					MasterManifestList.get(i).parseXMLInfo();
		 				} catch (ParserConfigurationException e) {
		 					// TODO Auto-generated catch block
		 					e.printStackTrace();
		 				} catch (SAXException e) {
		 					// TODO Auto-generated catch block
		 					e.printStackTrace();
		 				} catch (IOException e) {
		 					// TODO Auto-generated catch block
		 					e.printStackTrace();
		 				} catch (InterruptedException e) {
		 					// TODO Auto-generated catch block
		 					e.printStackTrace();
		 				}
		 			}
		    
		    */
		    
		    File manifestFile = new File("/Users/dxkvse/git/Research/VersionControlExtractor/AndroidManifestParser/testAPKfiles/app1/commit1/AndroidManifest.xml");
		    getManifestFileContents(manifestFile);
	}
	
	
	// Analyze the AndroidManifest file
	// Information is passed in as variable even though it could be stripped out from the file object just
	//		to make things simpler.
	public void analyzeManifestFile(String commitFolderName, String commitAppname, File manifestFileLocation){
		File manifestFile = new File(manifestFileLocation+"/AndroidManifest.xml");
		
		// I am not sure that this will ever be reached, but it is probably a good check
		if(!manifestFile.exists()){
			// log this somehow
			System.out.println("Manifest file not found");
		}else{
			// actually analyze the AndroidManfiest.xml file
			
			// create a new manifest object
			
			MasterManifestList.add(new manifestItem(manifestFile));
			
		//	apkList.add(new apkItem(f.getName(),RunAPKParser(f)));	
			
		}
				
		
		
		
		
		
		//System.out.println("analyzemanifest file" + commitAppname);
		//System.out.println(absoluteFilePath+"/AndroidManifest.xml");
		
		// Make sure it is actually a Manifest file being analyzed. This is a double check
		// Get the filename
		
		// File f = new File("C:\\Hello\\AnotherFolder\\The File Name.PDF");
	//	System.out.println(f.getName());
		
			
		//System.out.println(manifestFile.getName());
		
		// if(node.getNodeName().toString().equals("manifest")){
		//System.out.println("here" + manifestFile.getAbsolutePath());
		
		
		
		
		
		
	}
	
	private void getManifestFileContents(File manifestFile){
		System.out.println("Hi dan");
	}

}