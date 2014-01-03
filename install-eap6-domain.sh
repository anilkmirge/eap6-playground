#! /bin/bash
#
# JBoss EAP Accelerator script - Owned and Reserved by Vizuri
#
echo  '##############################################################################################################################################'
echo  '##############################################################################################################################################'
echo  '#################################### Welcome to JBoss EAP Installation and Configuration set up (Domain mode) ################################'
echo  '##############################################################################################################################################'
echo  '##############################################################################################################################################'
eap_path=$1
dir_path=$2

if [[ -z "$dir_path" || -z "$eap_path" ]]
then echo Please enter a valid path of JBoss EAP archive amd  where you would like to install JBoss EAP as the first and second argument, and then try again. For e.g. sudo ./install-eap-domain.sh /home/username/Downloads /opt/server
exit 0
else
echo You have chosen to install the JBoss EAP in $dir_path directory.

if [ -d $dir_path ]
then cp $eap_path/jboss-eap-6.*.*.zip $dir_path
  if [ -f $eap_path/jboss-eap-6.*.*.zip ]
  then echo Successfully copied the eap archive into $dir_path
  else echo There was some problem copying the JBoss EAP archive into $dir_path. Please check the permissions.
  exit 0
  fi
else echo Did not find the directory $dir_path, so creating one.. 
mkdir -p "$dir_path"
  if [ -d $dir_path ]
  then echo Successfully created the directory $dir_path
  else echo There was some problem creating the dir $dir_path. Please check the permissions.
  exit 0
  fi
cp $eap_path/jboss-eap-6.*.*.zip $dir_path
  if [ -f $eap_path/jboss-eap-6.*.*.zip ]
  then echo Successfully copied the eap archive into $dir_path
  else echo There was some problem copying the JBoss EAP archive into $dir_path. Please check the permissions.
  exit 0
  fi
fi
echo About to unzip the jboss-eap-6.x.x.zip file into $dir_path
cd $dir_path
jar xvf jboss-eap-6.*.*.zip
echo '######################## Successfully extracted the JBoss EAP archive ########################'
echo Removing the archived file for sanity
rm -rf jboss-eap-6.*.*.zip
echo Creating two more copies for the slave controllers under $dir_path/node1 and $dir_path/node2
mkdir node1
cp -R $dir_path/jboss-eap-6.* node1/
mkdir node2
cp -R $dir_path/jboss-eap-6.* node2/

echo Setting permission to all the script files within the domain controller....
cd $dir_path/jboss-eap-6.*/bin
chmod 755 *.sh
echo Done...permission set.
echo Let\'s first set a management user for JBoss EAP for your to be able to access the manegement console as an admin. Adding adminsitrator with username/password as jbossadmin/jbossadmin1!, but you can add and chose more users by running EAP_HOME/bin/add-user.bat\(sh\) and providing user type, username, password and role\(s\) to continue
./add-user.sh -u 'jbossuser' -p 'jbossuser1!' 

echo Now starting the jboss eap in domain mode.....
./domain.sh
fi
#End of the script
