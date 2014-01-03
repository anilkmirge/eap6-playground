eap_path=$1
cli_path=$2
echo Configuring the host controllers using CLI
if [[ -z "$eap_path" || -z "$cli_path"]]
then echo Please enter a valid path for installed JBoss EAP and CLI scripts 
exit 0
fi
cd $eap_path/bin

./jboss-cli.sh --file=$cli_path/configure-master.cli

