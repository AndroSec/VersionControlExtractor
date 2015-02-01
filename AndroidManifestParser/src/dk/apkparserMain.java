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


public class apkparserMain {
	util u = new util();

// THESE ITEMS NEED TO BE UPDATED FOR THE FINAL VERSION
	final String DBLocation="../db/AndrosecDatabase.sqlite";
	final String ManifestInputLocation="testAPKfiles";
	
	// List of all collected manifestItems
	private List<manifestItem>MasterManifestList=new ArrayList<manifestItem>();
	
	public static void main(String[] args) throws IOException, SQLException, ClassNotFoundException {
		//System.out.println("dan");
		apkparserMain am = new apkparserMain();
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
		    enterDataIntoDB();
	}
	
	
	// Analyze the AndroidManifest file
	// Information is passed in as variable even though it could be stripped out from the file object just
	//		to make things simpler.
	public void analyzeManifestFile(String commitFolderName, String commitAppname, File manifestFileLocation) throws IOException{
		File manifestFile = new File(manifestFileLocation+"/AndroidManifest.xml");
		
		// I am not sure that this will ever be reached, but it is probably a good check
		if(!manifestFile.exists()){
			// log this somehow
			System.out.println("Manifest file not found");
		}else{
			// actually analyze the AndroidManfiest.xml file
			
			// create a new manifest object
			
			MasterManifestList.add(new manifestItem(manifestFile, u.getContentsofFile(manifestFile)));
				
			
			
		}
				
	}
		
		private void enterDataIntoDB() throws SQLException, ClassNotFoundException{
			
			System.out.println("enter database information");
			
			
			// Loop through all of the apkItems
				Connection c = null;
			    Statement stmt = null;
//			    try {
			    	Class.forName("org.sqlite.JDBC");
			    	String prefix = "";
			    	if(System.getProperty("user.dir").contains("src")){
						prefix = "../";
					}
			    	
			    	

			    	final String sqlliteLocation = "jdbc:sqlite:"+prefix+DBLocation;
			    	System.out.println(sqlliteLocation);
			    	c = DriverManager.getConnection(sqlliteLocation);
			    	c.setAutoCommit(false);
			    	
			    	
			    
			    	for (int i = 0; i < MasterManifestList.size(); i++){
			    		System.out.println("test yo");
			    		System.out.println("Insert Info for:" + MasterManifestList.get(i).getManifestFileName());
			    		
		

			    		
			    		
		
									// Next add the permissions
					// Check to see if the intent exists in the intent table, if not then add it
					for (int a = 0; a < MasterManifestList.get(i).getPermissionList().size(); a++) {
				
						// Check to see if the value exists in the table, if not then add it
						stmt = c.createStatement();
					    ResultSet rs = stmt.executeQuery( "SELECT count(Permission) as countval FROM Android_Manifest_Permission where permission = '" + MasterManifestList.get(i).getPermissionList().get(a)  + "' ;" );
					    
					    int countval = 0;
					    if (rs.next()) {
					    	countval = rs.getInt("countval");
					    }
					    
					    System.out.println("The count is:" + countval);
					    
					    
					     // If none are found, then add it
					     if(countval < 1){
					    	// System.out.println("Insert140:" + MasterapkList.get(i).getPermissionList().get(a));
					    	 stmt = c.createStatement();
					    	 System.out.println("Insert 191");
						     String sql = "INSERT INTO android_manifest_permission (permission) VALUES ('"+MasterManifestList.get(i).getPermissionList().get(a)+"' );"; 
						     stmt.executeUpdate(sql);  
						     c.commit();
					     }
					     stmt.close();
					     rs.close();	
					     
					}
				
					/*
					// Get the rowID
					 stmt = c.createStatement();
				     ResultSet rs = stmt.executeQuery( "SELECT rowid  FROM apkInformation where apkid = '" + MasterManifestList.get(i).getManifestFileName()  + "' ;" );
				     
				     int RowID=0;
				     if (rs.next()) {
				    	 RowID=rs.getInt("rowid");
				     }
				     stmt.close();
				     rs.close();
*/
			    	}
				 	// Add the necessary information to the join table
				    // This could probably all be written cleaner and simpler, but I wanted to do this step by step to ensure that
				     //		there would be no issues with information getting out of sync.
				     
				
				/*
					     // Permissions
						    // For all of the intents in the array, get their intentID value to add it to the  join table
						 	for (int x = 0; x < MasterManifestList.get(i).getPermissionList().size(); x++) {
						 		
							     stmt = c.createStatement();
							     rs = stmt.executeQuery( "SELECT privID  FROM apkParser_privs where privName = '" + MasterManifestList.get(i).getPermissionList().get(x)  + "' ;" );
							     
							     int privID=0;
							     if (rs.next()) {
							    	 privID=rs.getInt("privID");
							     }
							     					     
							     stmt.close();
							     rs.close();
							     
							     if(privID > 0){ // Check to make sure an actual value was returned
							    	// System.out.println(privID);
							    	 // Make sure the combination does not exist in the linking table
							    	 // It shouldn't, but this is just being on the safe side
							    	 stmt = c.createStatement();
							    	String sql="SELECT count(privID) as matchcount FROM apkparser_privs_join where privID = " + privID  + " and rowID=" + RowID +  ";";
							    	// System.out.println(sql);
							    	 rs = stmt.executeQuery( sql );
								    
							    	 //matchingCount=rs.getInt("matchcount");
							    	 
							    	 int matchingCount=0;
								     if (rs.next()) {
								    	 matchingCount=rs.getInt("matchcount");
								     }
								     stmt.close();
								     rs.close();
								     //System.out.println(matchingCount);
								     
								     // since it doesn't match, it should be added to the table
								     if(matchingCount == 0){
								    	 stmt = c.createStatement();
									     sql = "INSERT INTO apkparser_privs_join (privID, rowID) VALUES (" + privID +","+RowID+");"; 
									    
									     System.out.println(sql);
									     stmt.executeUpdate(sql);  
									     c.commit();
									     stmt.close();
								     }
								          
								     stmt.close();
								     rs.close();
							     }
							     // end of priv linking	
				 	}
				    	*/
				     /*
					// Next insert the information into the apk tools table
					 stmt = c.createStatement();
					String sql="SELECT count(rowID) as countrowID FROM toolResults where rowid = '" + RowID  + "' ;";
					// System.out.println(sql);
				     rs = stmt.executeQuery( sql );
				   
				     // If none are found, then add it
				     int countrowID=0;
				     if (rs.next()) {
				    	 countrowID=rs.getInt("countrowID");
				     }	     
				     
				     if(countrowID < 1){
				    	 stmt = c.createStatement();
					     sql = "INSERT INTO ToolResults (apkID) VALUES ("+RowID+" );"; 
					     System.out.println(sql);
					     stmt.executeUpdate(sql);  
					     c.commit();
				     }
				     stmt.close();
				     rs.close();	
		   
				     // Now insert the basic toolresult values
				     stmt = c.createStatement();
				     sql = "Update toolResults set apkParser_versionCode='"+MasterManifestList.get(i).getVersionCode()+"', apkParser_VersionName='"+MasterManifestList.get(i).getVersionName()+"', apkParser_minsdk='"+ MasterManifestList.get(i).getMinsdk()+"'  , apkParser_targetsdk='"+ MasterManifestList.get(i).getTargetsdk()+"'       where rowID=" + RowID;
				    
				     System.out.println(sql);
				     
				     stmt.executeUpdate(sql);  
				     c.commit(); 			    
					 }

		
			    } catch ( Exception e ) {
			      System.err.println( e.getClass().getName() + ": " + e.getMessage() );
			      System.exit(0);
			    }
*/
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
			System.out.println(apkList.get(i).getManifestFileName());
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