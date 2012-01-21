README::Sanger Institute Virus Genomics Internship Program 2012 Submission

Author: Kiril Goguev
Email: kgoguev@gmail.com

Languages: Java,HTML
Running on: TomCat 5.5.35, MySQL DB,JAVA JRE

Third-party acknowledgements:
The following code was embedded into my web-app:
JFileupload with extensions JS3Upload, JS3Explorer Found at:
http://www.jfileupload.com/products/jfileupload/index.html
http://www.jfileupload.com/products/js3upload/index.html
http://www.jfileupload.com/products/js3explorer/index.html

Amazon Web Services SDK(JAVA)
found at: http://aws.amazon.com/sdkforjava/

Setup:
MySQL database required, Made a database specifically for this web-app
Usernames and passwords are stored in the database used to authenticate to the login page.

Already setup with users

Login: testuser1 Password: test1
Login: testuser2 Password: test2

How to use Web-app
navigate to ec2-23-20-5-122.compute-1.amazonaws.com:8080 in your web browser.
Instructions are on each page 

Files:

/-root directory of web-app: Contains all the pages served by the web-app
/WEB-INF/src: Contains all the java source files used in the web-app
/WEB-INF/classes: Contains all the java class files compiled from /WEB-INF/src
/WEB-INF/lib: Contains all the JAR files used by the web-app
/lib: Contains all the JAR files used by the web-app upload/download applets
/upload : Contains properties for the upload applet


index.jsp -> Main login page. Users first come to this page when visiting the site.
Uses Html to display a login form which then triggers the loggingin.jsp

loggingin.jsp -> This page uses a java class filed called: sqlmagic which can be found in \WEB-INF\classes\authentication\sqlmagic
sqlmagic provides methods used to check against the mySQL database for the supplied username and password from the index.jsp login form.
sqlmagic source file can be found

redirects back to index.jsp and displays failure message if login is unsuccessful
redirects to filearea.jsp if login is successful

filearea.jsp -> central page of the web-app all essential operations are carried out from this page
This page uses a java class file called S3magic, which can be found in \WEB-INF\classes\amazon
Displays a list of all the files that are uploaded by the user, methods are from the S3magic class which list the objects an access the buckets.

User can select the checkboxes and then click Delete -Files to delete uploaded items (redirects to delete.jsp)
User can click on the Upload-Files button to launch the Jfileupload with JS3Upload extension(redirects to applet_s3.jsp)
User can click on the Download-Files button to launch the Jfileupload with JS3Explorer extension(redirects to applet_s3explorer.jsp)
User can click on the Log-out button to return to the index.jsp and invalidate the session.

delete.jsp -> This page is responsible for providing the user with a summary of the files that are going to be deleted
calls the S3magic.delete(bucket,filename) method from S3magic

Users can return to file area or logout of the web-app

applet_s3.jsp-> This page is from JFileupload team, embeds the JFileupload applet with JS3Upload extension.
Use the applet to upload files or folders to the S3 bucket.

Users can return to file area or logout of the web-app

applet_s3explorer.jsp -> This page is from JFileupload team, embeds the JFileupload applet with JS3Explorer extension.
Use the applet to download files or folders ffrom the S3 bucket.

Users can return to file area or logout of the web-app

i18n*.properties files can be ignored they just set properties for the applets
AwsCredentials contain the auth information for the AWS S3 service


