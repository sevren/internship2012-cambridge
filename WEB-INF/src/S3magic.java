/**S3magic.java - Handles all the Amazon S3 commands for the web-app
*Author: Kiril Goguev
*SDK and functionality courtesy of Amazon Web Services http://aws.amazon.com/sdkforjava/
*/

package amazon;

/*setup all packages for use*/
import java.io.*;
import java.util.UUID;
import java.util.ArrayList;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.PropertiesCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ListObjectsRequest;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.Bucket;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.S3ObjectSummary;


public class S3magic
{
	/*getFiles- Returns an ArrayList of the filenames for passing back to the filearea.jsp page
	* Parameter n- name of the bucket that will be accessed on the AWS
	*/
	public ArrayList<String> getFiles(String n)throws IOException 
	{
		//Create new client and verifyCredentials for login
		AmazonS3 s3 = new AmazonS3Client(new PropertiesCredentials(
		S3magic.class.getResourceAsStream("AwsCredentials.properties")));

		ArrayList<String> files = new ArrayList<String>(); 
		
		try
		{
			//Queries the bucket for all the objects(files)
			ObjectListing objectListing = s3.listObjects(new ListObjectsRequest().withBucketName(n));
			for (S3ObjectSummary objectSummary : objectListing.getObjectSummaries())
			{
				files.add(objectSummary.getKey());
			}

		}
		catch (AmazonServiceException ase) 
		{
			System.out.println("Caught an AmazonServiceException, which means your request made it "
		+ "to Amazon S3, but was rejected with an error response for some reason.");
			System.out.println("Error Message:    " + ase.getMessage());
			System.out.println("HTTP Status Code: " + ase.getStatusCode());
			System.out.println("AWS Error Code:   " + ase.getErrorCode());
			System.out.println("Error Type:       " + ase.getErrorType());
			System.out.println("Request ID:       " + ase.getRequestId());
		} 
		catch (AmazonClientException ace) 
		{
			System.out.println("Caught an AmazonClientException, which means the client encountered "
		+ "a serious internal problem while trying to communicate with S3, "
		+ "such as not being able to access the network.");
			System.out.println("Error Message: " + ace.getMessage());
		}
		
		//return the arraylist back to the calling jsp to process and list for the user.
		return files;          
	}
	
	/*delete- deletes the object(file) from the Amazon S3 bucket
	* Parameter bucketname- name of the bucket that will be accessed on the AWS
	* Parameter f - name of the file to delete.
	*/
	public void delete(String bucket, String f)throws IOException 
	{
		//Create new client and verifyCredentials for login
		AmazonS3 s3 = new AmazonS3Client(new PropertiesCredentials(
		S3magic.class.getResourceAsStream("AwsCredentials.properties")));

		try
		{
			//Attempt to delete file
			s3.deleteObject(bucket, f);
		}
		catch (AmazonServiceException ase) 
		{
			System.out.println("Caught an AmazonServiceException, which means your request made it "
		+ "to Amazon S3, but was rejected with an error response for some reason.");
			System.out.println("Error Message:    " + ase.getMessage());
			System.out.println("HTTP Status Code: " + ase.getStatusCode());
			System.out.println("AWS Error Code:   " + ase.getErrorCode());
			System.out.println("Error Type:       " + ase.getErrorType());
			System.out.println("Request ID:       " + ase.getRequestId());
		} 
		catch (AmazonClientException ace) 
		{
			System.out.println("Caught an AmazonClientException, which means the client encountered "
		+ "a serious internal problem while trying to communicate with S3, "
		+ "such as not being able to access the network.");
			System.out.println("Error Message: " + ace.getMessage());
		}         
	}


}
