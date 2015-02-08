package dk;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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

public class Parser2 {

	util u = new util();

	// THESE ITEMS NEED TO BE UPDATED FOR THE FINAL VERSION
	final String DBLocation="../db/AndrosecDatabase.sqlite";
	final String ManifestInputLocation="testAPKfiles";
		
	// List of all collected manifestItems
	private List<manifestItem>MasterManifestList=new ArrayList<manifestItem>();
		
	
	public static void main(String[] args) throws IOException, SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		Parser2 p2 = new Parser2();
		p2.Run();
	}
	
	
	private void tempClearDB() throws ClassNotFoundException, SQLException{
		System.out.println(" ********** Clear the database ********** ");
		Connection c = null;
	    Statement stmt = null;
	    Class.forName("org.sqlite.JDBC");
	    String prefix = "";
	   
	    final String sqlliteLocation = "jdbc:sqlite:"+prefix+DBLocation;
	    //System.out.println(sqlliteLocation);
	    c = DriverManager.getConnection(sqlliteLocation);
	    c.setAutoCommit(false);
		stmt = c.createStatement();
    	String sql = "delete from android_manifest_permission"; 
    	System.out.println(sql);
	    stmt.executeUpdate(sql);  
	    c.commit();
		
	    sql = "delete from android_manifest_permission_join"; 
    	System.out.println(sql);
	    stmt.executeUpdate(sql);  
	    c.commit();
		
	    
	    
	}
	
	public void Run() throws IOException, SQLException, ClassNotFoundException{	
		
		tempClearDB();
		
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
		  				 
		  				 if(!listOfFiles_app[ii].getName().toLowerCase().contains("ds_store")){ // Ignore certain file types
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
				  				// Add all the manifest files to the master list
				  				MasterManifestList.add(new manifestItem(manifestFile, u.getContentsofFile(manifestFile), listOfFiles[i].getName(), listOfFiles_app[ii].getName()));
				  			}
		  				 }else{
		  					 System.out.println("Skip file: " + listOfFiles_app[ii].getName());
		  				 }
			  		}  
		      }
		}
		    
		// now alter the contents of the manifest file
		//System.out.println("alter contents" + MasterManifestList.size());
		gatherManifestInfo();
		    
		// Store the information in a database
		enterDataIntoDB();
		    
	}
	
	
	
private void gatherManifestInfo() {

		
		
		// Loop through objects in the list
		for (int i = 0; i < MasterManifestList.size(); i++){
//			System.out.println(apkList.get(i).getManifestFileName());
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

}	

	private void enterDataIntoDB() throws SQLException, ClassNotFoundException{
	
			System.out.println("enter database information");
	
			
			
	    	Class.forName("org.sqlite.JDBC");
	    	String prefix = "";
	    	if(System.getProperty("user.dir").contains("src")){
				prefix = "../";
			}
	    	
	    	final String sqlliteLocation = "jdbc:sqlite:"+prefix+DBLocation;
	    	//System.out.println(sqlliteLocation);
	    	Connection c = null;
			
	    	c = DriverManager.getConnection(sqlliteLocation);
	    	c.setAutoCommit(false);
	    	
	    	for (int i = 0; i < MasterManifestList.size(); i++){
	    		
	    	// Loop through all of the apkItems
				Statement stmt = null;
				
				// Get the rowID for the commit
				 stmt = c.createStatement();
				 String SQLCommand =  "SELECT Commit_ID FROM Android_manifest_commitInfo where Commit_val = '" + MasterManifestList.get(i).getacommitName()  + "' ;";
			     System.out.println(SQLCommand);
				 ResultSet rs = stmt.executeQuery(SQLCommand);
			     
			     int Commit_ID=-1;
			     if (rs.next()) {
			    	 Commit_ID=rs.getInt("Commit_ID");
			     }
			     stmt.close();
			     rs.close();
			     
			     System.out.println("Commit_ID:" + Commit_ID);
			    
		

					// Next add the permissions
	    		// Check to see if the intent exists in the intent table, if not then add it
	    		for (int a = 0; a < MasterManifestList.get(i).getPermissionList().size(); a++) {
				 
					// Check to see if the value exists in the table, if not then add it
					stmt = c.createStatement();
				    rs = stmt.executeQuery( "SELECT count(Permission) as countval FROM Android_Manifest_Permission where permission = '" + MasterManifestList.get(i).getPermissionList().get(a)  + "' ;" );
				    
				    int countval = 0;
				    if (rs.next()) {
				    	countval = rs.getInt("countval");
				    }
				    
				     // If none are found, then add it
				     if(countval < 1){
				    	// System.out.println("Insert140:" + MasterapkList.get(i).getPermissionList().get(a));
				    	 stmt = c.createStatement();
				    	 System.out.println("Insert Info for:" + MasterManifestList.get(i).getManifestFileName() + " " + MasterManifestList.get(i).getPermissionList().get(a));
				    	 String sql = "INSERT INTO android_manifest_permission (permission) VALUES ('"+MasterManifestList.get(i).getPermissionList().get(a)+"' );"; 
					     stmt.executeUpdate(sql);  
					     c.commit();
				     }
				     stmt.close();
				     rs.close();	
				     
				     
				     // Add the permission information to the join table
				     // Check to see if it exists
				     
				     // Get the Permission ID
				  
				 	 stmt = null;
					
					// Get the rowID for the Permission
					 stmt = c.createStatement();
					 SQLCommand =  "SELECT Permission_ID FROM android_manifest_permission where permission = '" + MasterManifestList.get(i).getPermissionList().get(a)  + "' ;";
				     System.out.println(SQLCommand);
					 rs = stmt.executeQuery(SQLCommand);
				     
				     int Permission_ID=-1;
				     if (rs.next()) {
				    	 Permission_ID=rs.getInt("Permission_ID");
				     }
				     stmt.close();
				     rs.close();
				     
				     System.out.println("Permission_ID:" + Permission_ID);
				
				     
				     // Check to see if Commit_ID, Permission_ID exists in the priv join table
				     stmt = c.createStatement();
				     String sql="SELECT count(Commit_ID) as countval FROM android_Manifest_permission_join where commit_ID = '" + Commit_ID  + "' and Permission_ID=" + Permission_ID + ";";
				     System.out.println(sql);
				     rs = stmt.executeQuery(sql);
				     int privJoinCount=-1;
				     if (rs.next()) {
				    	 privJoinCount=rs.getInt("countval");
				     }
				     stmt.close();
				     rs.close();
				     
				     System.out.println("privJoinCount:" + privJoinCount);
				
				     // If the values do not exist in the priv join table
				     if(privJoinCount < 1){
					    	// System.out.println("Insert140:" + MasterapkList.get(i).getPermissionList().get(a));
					    	 stmt = c.createStatement();
					    	 sql = "INSERT INTO android_Manifest_permission_join (Commit_ID, Permission_ID) VALUES ("+Commit_ID+"," + Permission_ID +" );"; 
						     System.out.println(sql);
					    	 stmt.executeUpdate(sql);  
						     c.commit();
					     }
					     stmt.close();
					     rs.close();	
				     
				     
				     
				     
				     
				     
				     
				     // Test with different manifest files
				     
				     
				     
				     
				     /*
				     stmt = c.createStatement();
					 
				    update this statement to look for the new itemss
				     rs = stmt.executeQuery( "SELECT count(Permission) as countval FROM android_Manifest_permission_join where commitID = '" + Commit_ID  + "' and Permission_ID=" +  + ;" );
					    
					    countval = 0;
					    if (rs.next()) {
					    	countval = rs.getInt("countval");
					    }
					    
					     // If none are found, then add it
					     if(countval < 1){
					    	// System.out.println("Insert140:" + MasterapkList.get(i).getPermissionList().get(a));
					    	 stmt = c.createStatement();
					    	 System.out.println("Insert Info for:" + MasterManifestList.get(i).getManifestFileName() + " " + MasterManifestList.get(i).getPermissionList().get(a));
					    	 String sql = "INSERT INTO android_manifest_permission (permission) VALUES ('"+MasterManifestList.get(i).getPermissionList().get(a)+"' );"; 
						     stmt.executeUpdate(sql);  
						     c.commit();
					     }
					     stmt.close();
					     rs.close();	
			*/
				     
				     
				     
				          
	    		}		
					
	    		////	System.out.println("Full Path:" + MasterManifestList.get(i).getManifestFile().getAbsolutePath());
	    		//	System.out.println("Full Name:" + MasterManifestList.get(i).getappName());
	    		//	System.out.println("Commit Name:" + MasterManifestList.get(i).getacommitName());
			
			
			
			
			 
		  // Add the necessary information to the join table
			  // This could probably all be written cleaner and simpler, but I wanted to do this step by step to ensure that
			    //		there would be no issues with information getting out of sync.
			   
		     
		     

	    	}
		 	
	    	
	
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

	
	
	/* Todo
	 * 	Add intents and other information
	 * 
	 */

}
