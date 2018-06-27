System Requirements:
====================
    
a) Supported Ubuntu Operating Systems: 
	Ubuntu 14.04 (LTS) and later
	
b) Supported Architectures:
	64-bit

c) Hardware Requirements:
	Minimum 4GB RAM
	Minimum of 4GB of free disk space
 
Note:
	a) This setup script is for machines running Ubuntu that do not have Miniconda2.  
	b) If you have Miniconda2 already installed on your computer, please skip Command 1 and proceed to Command 2.
 

Installation steps:
===================

1) Extract the downloaded installer using the Archive Manager/File-Roller, or using the following command on the bash prompt:
	tar -xvf Osdag_ubuntu_installer_v2018.06.a.3839.tar.gz
 
2) In bash, navigate to the extracted installation folder containing the shell scripts (the folder that contains this README file) and a folder named Osdag, and enter Command 1 and Command 2 given below.
	
	Commands:
	1) bash 1-install-Miniconda2-latest-Linux-x86_64.sh
	2) bash 2-install-osdag.sh
	
	Note: 
	a) If you already have an earlier version of Osdag installed on your system, then skip Command 1.
	b) After entering Command 1, while installing Miniconda2, you will be asked whether you wish to set the system default python to Miniconda2. You need to agree to this, in order for Command 2 to work. Alternatively, you may manually execute the steps in the script 2-install-osdag.sh, and specify the python version while calling pip to install pdfkit.
    
	
Running Osdag:
==============

Once the installation is complete, you may copy/move the extracted Osdag folder to a location of your choice (say, directly to your home folder). You can run Osdag in two ways
	a) Using the Osdag Launcher:
		To run Osdag, navigate to the Osdag folder, double click on the file named Osdag (without any extension). This file is different from Osdag_icon.ico (although both will show the Osdag logo in the grid icon view mode). If you are using the Unity desktop, you may also pin this launcher to the launcher sidebar.
	b) Using the Command:
		In the bash prompt, navigate to the Osdag directory and enter the following command:
			python osdagMainPage.py
     
	
Important Notes:
================

1) Command 2 will work only if the system default python is the one installed through Miniconda2. Alternatively, you may specify the (installed) python you wish to use, in Command 2.