eap_path=$1

echo Configuring the host controllers using CLI
if [[ -z "$eap_path" ]]
then echo Please enter a valid path of JBoss EAP 
exit 0
fi
cd $eap_path/bin

./jboss-cli.sh --file=/opt/cliscripts/configure-master.cli

