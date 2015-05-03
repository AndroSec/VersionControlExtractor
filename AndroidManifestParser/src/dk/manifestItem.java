package dk;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.w3c.dom.Node;

// This class will hold all of the apk information
// A class is created since there may be timing issues between the reading from an apk file and writing to the DB.

public class manifestItem {

	//MasterManifestList.add(new manifestItem(manifestFile, u.getContentsofFile(manifestFile), "dan", listOfFiles[i].getName()));
		
	
	public manifestItem(File manifestFile, String fileContents, String AppName, String CommitName) {
		manifestFile = manifestFile;
		this.manifestContents = fileContents;
		appName=AppName;
		commitName=CommitName;
		//location=Location;
		// get the contents of the file
	}

	private int commit_ID;	// Commit_ID from the database
	
	// Store the basic attributes of the manifest file
	private File manifestFile;
	private String manifestContents;
	private String appName;
	private static String commitName;	// Changed for the individual manifestParser
	//private String location;
	
	
	public int getCommit_ID(){
		return commit_ID;
	}
	
	public void setCommitID(int commit_ID) {
		this.commit_ID = commit_ID;
	}
	
	public File getManifestFile(){
		return manifestFile;
	}
	
	public String getappName() {
		return appName;
	}
	
	public static String getacommitName() {
		return commitName;
	}
	
	//public String getLocation() {
	//	return location;
	//}
	
	
	// Store the data about the manifest file
	private String versionCode;
	private String versionName;
	private String minsdk;
	private String targetsdk;
	private ArrayList<String>permissionList=new ArrayList<String>(); 
	private ArrayList<String>intentList=new ArrayList<String>(); 
	
	
	//private String manfiestFilePath;
	//public String getmanfiestFilePath() {
	//	return manfiestFilePath;
	//}
	
	//
	//private String apkFileName;
	//private String apkContents;
		
//	public String getApkFileName() {
//		return apkFileName.replace(".apk", "");
//	}
	
	public String getManifestFileName(){
		//return manifestFile.getName();
		return "test";
	}
	
	
//	public void setApkFileName(String apkFileName) {
//		this.apkFileName = apkFileName;
//	}
	
	public String getmanifestContents() {
		return manifestContents;
	}
	
	public void setManfiestContents(String manifestContents) {
		this.manifestContents = manifestContents;
	}
	
	public String getVersionCode() {
		return versionCode;
	}

	public String getVersionName() {
		String retVal="";
		
		if(versionName!=null){
			System.out.println(versionName + " - " + versionName.replace("'", ""));
			retVal=versionName.replace("'", "");
		}
		
		return retVal;
	}
	

	public String getMinsdk() {
		return minsdk;
	}
	
	public String getTargetsdk() {
		return targetsdk;
	}

	public ArrayList<String> getPermissionList() {
		return permissionList;
	}
	
	// Make sure that only unique items are added to the intent list
	private void AddUniqueItemToIntentList(String value){	
		boolean isExist=false;
		for (int z = 0; z <intentList.size(); z++){
			if(intentList.get(z).toLowerCase().trim().equals(value.toLowerCase().trim())){
				isExist=true;
			}
		}
		if(isExist==false){
			intentList.add(value);
		}
	}

	// Make sure that only unique items are added to the permission list
	private void AddUniqueItemToPermissionList(String value){	
		boolean isExist=false;
		for (int z = 0; z <permissionList.size(); z++){
			if(permissionList.get(z).toLowerCase().trim().equals(value.toLowerCase().trim())){
				isExist=true;
			}
		}
		if(isExist==false){
			permissionList.add(value);
		}
	}

	public ArrayList<String> getIntentList() {
		return intentList;
	}

	
	public void parseXMLInfo() throws ParserConfigurationException, SAXException, IOException, InterruptedException{	
		DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder docBuilder = docBuilderFactory.newDocumentBuilder();
		Document doc = docBuilder.parse(new InputSource(new StringReader(manifestContents)));
		readXMLInfo(doc.getDocumentElement());
	}

	
	public void readXMLInfo(Node node) {
		
		// Get version information
	   if(node.getNodeName().toString().equals("manifest")){
		   // Loop through all of the possible values 
		   // This is done just in case the order of the items change at all
		   for (int a = 0; a < node.getAttributes().getLength(); a++) {
			   if(node.getAttributes().item(a).getNodeName().equals("android:versionCode")){
				   versionCode=node.getAttributes().item(a).getNodeValue();
			   }
			   if(node.getAttributes().item(a).getNodeName().equals("android:versionName")){
				   versionName=node.getAttributes().item(a).getNodeValue();
			   }
		   }
	   }
	   	   
	    NodeList nodeList = node.getChildNodes();
	    for (int i = 0; i < nodeList.getLength(); i++) {
	        Node currentNode = nodeList.item(i);
	        
	        // Get the number of permissions used in the Application
	        if(currentNode.getNodeName().toString().equals("uses-permission")){
	     
	        	final String permission =currentNode.getAttributes().item(0).getNodeValue().toString(); 
	        	//permissionList.add(permission);
	        //	doSomething(currentNode);
	        	AddUniqueItemToPermissionList(permission);
	        }
	        

			String targetSdk ="";
			String sdk = "";

	     // Get the min and target sdk version
	        if(currentNode.getNodeName().toString().equals("uses-sdk")){
	        	
	        	// Make sure there is an item to pull in
	        	if(currentNode.getAttributes().getLength()>0){
		        	sdk =currentNode.getAttributes().item(0).getNodeValue().toString(); 
		        	//System.out.println("MinSDK: " + sdk);
		        	minsdk = sdk;
	        	}
	        	
	        	// Make sure there is an item to pull in
	        	if(currentNode.getAttributes().getLength()>1){
		        	targetSdk =currentNode.getAttributes().item(1).getNodeValue().toString(); 
		        	//System.out.println("MinSDK: " + sdk);
		        	targetsdk = targetSdk;	
	        	}
	        }
	       	       
	       	         
	        // Get the intent information
	        if(currentNode.getNodeName().toString().equals("application")){
	        	
	        	for (int b = 0; b < currentNode.getChildNodes().getLength(); b++) {
	        		if(currentNode.getChildNodes().item(b).getNodeName().equals("activity")){
	        			for (int c = 0; c < currentNode.getChildNodes().item(b).getChildNodes().getLength(); c++) {
	        				if(currentNode.getChildNodes().item(b).getChildNodes().item(c).getNodeName().equals("intent-filter")){
	        					for (int d = 0; d < currentNode.getChildNodes().item(b).getChildNodes().item(c).getChildNodes().getLength(); d++) {
	        						String Name = currentNode.getChildNodes().item(b).getChildNodes().item(c).getChildNodes().item(d).getNodeName();
	        						if(!Name.trim().equals("#text")){						
	        							String value= "";
	        							if(currentNode.getChildNodes().item(b).getChildNodes().item(c).getChildNodes().item(d).getAttributes()!=null){
	        								value= currentNode.getChildNodes().item(b).getChildNodes().item(c).getChildNodes().item(d).getAttributes().item(0).getNodeValue();				    			
	        							}
	        							if(value.contains("android.intent")){
	        								AddUniqueItemToIntentList(value);
	        							}
	        						}
	        					
	        					}
	        				}

	        			}
	        		}
	        	}
	        }
 
	    }

	}

	
	
	
	
}