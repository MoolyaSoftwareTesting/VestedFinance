# Vested Finance_RF
### Vested Finance Automation Project - RobotFramework

### Android Automation Setup

#### Table of Contents

* [About the Project](https://github.com/MoolyaSoftwareTesting/Vested Finance_RF/blob/KU_RF_PE_PHASE1/README.md#about-the-project)
     * [BuiltWith](https://github.com/MoolyaSoftwareTesting/Vested Finance_RF/blob/KU_RF_PE_PHASE1/README.md#built-with)
* [Getting Started](https://github.com/MoolyaSoftwareTesting/Vested Finance_RF/blob/KU_RF_PE_PHASE1/README.md#getting-started) 

    * [Pre-requisites](https://github.com/MoolyaSoftwareTesting/Vested Finance_RF/blob/KU_RF_PE_PHASE1/README.md#pre-requisites)
    * [Installation](https://github.com/MoolyaSoftwareTesting/Vested Finance_RF/blob/KU_RF_PE_PHASE1/README.md#installation)
    
    
    
 #### About the Project
 
 The scope of this project is to Automate the AUT web application Regression testing through Robot framework.
   
 #### Built With
 
 * [Python](https://www.python.org/)
 * [Selenium](https://www.selenium.dev/)
 
 #### Getting Started
 To start with this tool, some prerequisites has to be made, which are described below 👇.
 
 #### Pre-requisites
 The major softwares or tools which has to be setup in the machine to run the test script using the tool are listed down below.
 *  Python- v3 and above 
 *  Pip
 *  Robot Framework
 *  Selenium
 *  robotframework-seleniumlibrary
 *  robotframework-jsonlibrary
 *  robotframework-jsonvalidator
 *  Chromedriver/Geckodriver
 
 #### Installation
 
 * [To install python3 for Ubuntu](https://phoenixnap.com/kb/how-to-install-python-3-ubuntu)
   
     * To check the version of python installed
       cmd : **python --version**
       
 * If not python 3.x.x, Where to find my python location
   **which python**
   (Copy location)
   export PATH= /your/python-location.
   
*  [Install Pip for Python](https://www.tutorialspoint.com/robot_framework/robot_framework_unix_linux_installation.htm)
   cmd : **python3 get-pip.py**
     * To check the version of pip installed 
       cmd : **pip3 --version**
       
*  [Install Robot Framework](https://www.tutorialspoint.com/robot_framework/robot_framework_unix_linux_installation.htm)
   cmd : **pip install robotframework**  

* [Seleium Library](https://pypi.org/project/robotframework-seleniumlibrary/)
  cmd: **pip install robotframework-seleniumlibrary**
  
* [Install latest Chromedriver/Geckodriver](https://robotframework.org/SeleniumLibrary/)
  cmd : **pip install webdrivermanager**
        **webdrivermanager firefox chrome --linkpath /usr/local/bin**
        
* [Install Json Library](https://pypi.org/project/robotframework-jsonlibrary/)
  cmd : **pip install robotframework-jsonlibrary**
  
* [Install Json Validator](https://pypi.org/project/robotframework-jsonvalidator/)
  cmd : **pip install robotframework-jsonvalidator**
  
#### Run Command Details

  Upon installing the above-required software. Follow the below steps to trigger the execution for web :
  
  * Navigate to the respective project directory folde where the project has been cloned using **(git clone <projecturl.git>)** and placed from GitHub.
  * Launch command prompt
  * Provide the command as **robot -d Results  Tests/DesktopWeb/PreLoginTests.robot**
  
    
 #### Execution Results 
 Find the Execution result under ../results/report.html
  
        
