package dk;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;


public class old_apkparserMain {
	util u = new util();

// THESE ITEMS NEED TO BE UPDATED FOR THE FINAL VERSION
	final String DBLocation="../db/AndrosecDatabase.sqlite";
	final String ManifestInputLocation="testAPKfiles";
	
	// List of all collected manifestItems
	private List<manifestItem>MasterManifestList=new ArrayList<manifestItem>();
	
	public static void main(String[] args) throws IOException, SQLException, ClassNotFoundException {
		//System.out.println("dan");
		old_apkparserMain am = new old_apkparserMain();
		am.Run();
	}
	
	// Once things are running, clean this function up
	public void Run() throws IOException, SQLException, ClassNotFoundException{	
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

		    
		    File manifestFile = new File("/Users/dxkvse/git/Research/VersionControlExtractor/AndroidManifestParser/testAPKfiles/app1/commit1/AndroidManifest.xml");
		    getManifestFileContents(manifestFile);
		    
		    // Now enter the information into the DB
		    
		    gatherManifestInfo(MasterManifestList);
		    
		    System.out.println("Enter DB info");
		//    enterDataIntoDB();
	}
	
	
	// Analyze the AndroidManifest file
	// Information is passed in as variable even though it could be stripped out from the file object just
	//		to make things simpler.
	public void analyzeManifestFile(String commitFolderName, String commitAppname, File manifestFileLocation) throws IOException{
		
		//System.out.println("1" + commitFolderName);
		//System.out.println("2" + commitAppname);
		//System.out.println("3" + manifestFileLocation);
		
		File manifestFile = new File(manifestFileLocation+"/AndroidManifest.xml");
		
		// I am not sure that this will ever be reached, but it is probably a good check
		if(!manifestFile.exists()){
			// log this somehow
			System.out.println("Manifest file not found");
		}else{
			// actually analyze the AndroidManfiest.xml file
			
			// create a new manifest object
			
			
			
			
	//	MasterManifestList.add(new manifestItem(manifestFile, u.getContentsofFile(manifestFile), commitFolderName, commitAppname));
				
			
			
		}
				
	}
		
		
		
		
		
		
		
	

	// Test to get the entire contents of the file
	// This is needed in the Item class. When the file is created, it will need to have its contents read so it can be parsed
	private void getManifestFileContents(File manifestFile){
	
		
		/*
		System.out.println("Hi dan");

		String s = null;
		StringBuilder sb = new StringBuilder();
		
			try {
				System.out.println(RunAPKParser(manifestFile), u.getContentsofFile(manifestFile));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
	*/
	}
	
	
	private void gatherManifestInfo(List<manifestItem>apkList) {

		
		
		// Loop through objects in the list
		for (int i = 0; i < apkList.size(); i++){
//			System.out.println(apkList.get(i).getManifestFileName());
			try {
				apkList.get(i).parseXMLInfo();
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

}
	
		
		
		
}