eap6-playground
===============

EAP6 Starter Project

Objective: The goal of this project is to automate the process of installing, configuring and deploying applications into JBoss Enterprise Application Platform (EAP) 6.0 and above.

Disclaimer: This project is a work in progress only and does not guaranteed to be a working without any glitches and use it to your own risk. I will continue to update this and make it better through your feedback and my own development in understanding JBoss EAP better than I understand it today.

Steps to get started:

1) Download the latest version of EAP 6 (the zipped version is the most faster way to get up and running) from Redhat Customer portal at https://access.redhat.com/jbossnetwork/restricted/listSoftware.html?downloadType=distributions&product=appplatform&productChanged=yes or from the Open source community at https://www.jboss.org/products/eap.html
 
2) Make a note of the directory where you have downloaded the jboss-eap-6.x.x.zip. We will need this in the following steps.

3) JBoss EAP 6 can be started in both standalone mode and domain mode. When you git clone this project you will essentially see three shell scripts (atleast for now - this might change later) and one README.md file.

4) Depending upon which mode you want to install and run your eap, run the appropriate shell script as follows:

     a)Standalone mode - Open a terminal and cd into the root folder of this project and run sudo ./install-eap6-standalone.sh /EAP6_downloaded_dir_path/ /EAP6_installation_destination_dir_path

     b)Standalone mode using full profile - Open a terminal and cd into the root folder of this project and run sudo ./install-eap6-standalone-full.sh /EAP6_downloaded_dir_path/ /EAP6_installation_destination_dir_path

    c)Domain mode - Open a terminal and cd into the root folder of this project and run sudo ./install-eap6-domain.sh /EAP6_downloaded_dir_path/ /EAP6_installation_destination_dir_path

     



