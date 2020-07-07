
=========================================================================================
Installation steps:
    Extract the downloaded installer using the Archive Manager/File-Roller, or using 
the following command on the bash prompt:
	tar -xvf Osdag_ubuntu_installer.tar.gz
 
  # If you have already installed the  previous version of Osdag in your system then 
 skip Step/Command 1) and just run the new 2-install-osdag.sh.
 
    In bash, navigate to the extracted installation folder containing the shell 
scripts (the folder that contains this README file) and a folder named Osdag, 
and enter Command 1 , Command 2 and Command 3 given below.  
 
    Note: After entering Command 1, while installing Miniconda3, you will be asked  
whether you wish to set the system default python to Miniconda3. You need to agree  
to this.After that you have to run command 2 in order for the 3rd command to work.
After that execute the 3rd steps. After 3rd step completed run the command 4.Please be sure 
to have internet connection as it's required to download some files.
    Step/Command 1:
        bash 1-install-Miniconda3-latest-Linux-x86_64.sh
     Step/Command 2:
	bash 2-init-conda_base.sh
    Step/Command 3:
        bash 3-install-osdag.sh
    Step/Command 4:
	bash 4-install-texlive.sh
    
=========================================================================================
Running Osdag:
    After the installation is complete, you may copy/move the extracted Osdag folder
to a location of your choice (say, directly under your home folder). 
    You can run Osdag in two ways
    1) Using the Osdag Launcher:
        To run Osdag, navigate to the Osdag folder, double click on the file 
named Osdag (without any extension). This file is different from Osdag_icon.ico 
(although both will show the Osdag logo in the grid icon view mode).
If you are using the Unity desktop, you may also pin this launcher to the launcher sidebar.
    
    2) Using the Command:
        In the bash prompt, navigate to the /<user>/home/Osdag directory and enter the following command
        bash launcher.sh
     
    Note:If step 1 is working try step 2 it's always work.
=========================================================================================
 

