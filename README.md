# Ubuntu Installer 

This setup script is for machines running Ubuntu 24.04 LTS. 


## System Requirements:

Supported Ubuntu Operating Systems : 
- Ubuntu 24.04 LTS.
	
Supported Architectures:
- 64-bit

Hardware Requirements:
- Minimum 4GB RAM
- Minimum of 4GB of free disk space
 
Note:
- This setup script is for machines running Ubuntu that do not have Miniconda3.  
- If you have Miniconda3 already installed on your computer, please skip Command 1 and proceed to Command 2.
 

## Installation steps:

1) Download the linux installer from the [Osdag website](https://osdag.fossee.in/resources/downloads) and extract it using
```
tar -xvf Osdag_ubuntu_installer_v2018.06.a.3839.tar.gz
```
2) Navigate to the extracted installation folder containing the shell scripts and a folder named Osdag, and replace the **2-install-osdag.sh** script with the updated [script](https://github.com/Nandagopalvs25/UbuntuInstaller/blob/master/2-install-osdag.sh) from this repository.

3) In bash, navigate to the extracted installation folder, and  install Miniconda using. 
	
```
bash 1-install-Miniconda3-latest-Linux-x86_64.sh
```
4) Close the terminal and reopen it at the same location and execute, 
```
bash 2-install-osdag.sh
```
5) Install the remaining dependencies with,
```
 bash 3-install-texlive.sh
```

Note: 
- After entering Command 1, while installing Miniconda3, you will be asked whether you wish to set the system default python to Miniconda3. You need to agree to this, in order for Command 2 to work. 
    
	
## Running Osdag:


Once the installation is complete, you may copy/move the extracted Osdag folder to a location of your choice (say, directly to your home folder). Navigate to the Osdag directory, and copy the file [OsdagRun.sh](https://github.com/Nandagopalvs25/UbuntuInstaller/blob/master/OsdagRun.sh) there. To launch Osdag, simply run
```
bash OsdagRun.sh
```
			
     
	
## Important Notes:


1) Command 2 will work only if the system default python is the one installed through Miniconda3. Alternatively, you may specify the (installed) python you wish to use, in Command 2.
