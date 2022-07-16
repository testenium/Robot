# Robot
Robot Selenium Example
Selenium Grid
 With machine and browser configuration

cd\selenium
java -jar rc7.jar -role hub
cd\selenium
java -Dwebdriver.chrome.driver="c:\selenium\chromedriver.exe" -jar rc7.jar -role webdriver -hub http://localhost:4444/grid/register -port 6666
cd\selenium
java -Dwebdriver.gecko.driver="c:\selenium\geckodriver.exe" -jar rc7.jar -role webdriver -hub http://localhost:4444/grid/register -port 5555


 *** Settings ***
Library  Selenium2Library
 
*** Variables ***
 
@{_tmp}
    ...  browserName: chrome,
    ...  platform: WINDOWS,
    ...  name: RobotFramework Test
  
${CAPABILITIES}     ${EMPTY.join(${_tmp})}
${REMOTE_URL}       http://localhost:4444/wd/hub
  
*** Test Cases ***
 Test1 
      Open Test Browser
      Close Test Browser

*** Keywords ***
 
Open Test Browser
    Open browser  https://wcc.co.uk   Chrome   none   
    ...  ${REMOTE_URL}   
    ...  desired_capabilities=${CAPABILITIES}
    sleep         10s
Close Test Browser
    Close all browsers
    
    
    
 
 

Run with the command >	 robot grid1.robot
Chrome Node on Windows Machine shows the execution.

 
13:30:52.548 INFO - Capabilities {browserName: chrome, name: RobotFramework Test, platform: WINDOWS} matched class org.openqa.selenium.remote.server.ServicedSession$Factory (provider: org.openqa.selenium.chrome.ChromeDriverService)
Starting ChromeDriver 103.0.5060.53 (a1711811edd74ff1cf2150f36ffa3b0dae40b17f-refs/branch-heads/5060@{#853}) on port 34873
Only local connections are allowed.
Please see https://chromedriver.chromium.org/security-considerations for suggestions on keeping ChromeDriver safe.
ChromeDriver was started successfully.
13:30:54.123 INFO - Detected dialect: W3C
13:30:54.141 INFO - Found handler: org.openqa.selenium.remote.server.ServicedSession@3b92a5c6
13:30:54.141 INFO - Handler thread for session 153db30be4cdbf61a7b6e137cc4a9c90 (chrome): Executing POST on /session/153db30be4cdbf61a7b6e137cc4a9c90/timeouts (handler: ServicedSession)
13:30:54.146 INFO - To upstream: {"script": 5000}
13:30:54.148 INFO - To downstream: {"value":null}
13:30:54.172 INFO - Found handler: org.openqa.selenium.remote.server.ServicedSession@3b92a5c6
13:30:54.174 INFO - Handler thread for session 153db30be4cdbf61a7b6e137cc4a9c90 (chrome): Executing POST on /session/153db30be4cdbf61a7b6e137cc4a9c90/timeouts (handler: ServicedSession)
13:30:54.179 INFO - To upstream: {"implicit": 0}
13:30:54.180 INFO - To downstream: {"value":null}
13:30:54.203 INFO - Found handler: org.openqa.selenium.remote.server.ServicedSession@3b92a5c6
13:30:54.204 INFO - Handler thread for session 153db30be4cdbf61a7b6e137cc4a9c90 (chrome): Executing POST on /session/153db30be4cdbf61a7b6e137cc4a9c90/url (handler: ServicedSession)
13:30:54.211 INFO - To upstream: {"url": "https://wcc.co.uk"}
13:30:57.544 INFO - To downstream: {"value":null}
13:31:07.586 INFO - Found handler: org.openqa.selenium.remote.server.ServicedSession@3b92a5c6
13:31:07.588 INFO - Handler thread for session 153db30be4cdbf61a7b6e137cc4a9c90 (chrome): Executing DELETE on /session/153db30be4cdbf61a7b6e137cc4a9c90 (handler: ServicedSession)
13:31:07.639 INFO - To downstream: {"value":null}
13:31:07.643 INFO - Removing session org.openqa.selenium.remote.server.ServicedSession@3b92a5c6
13:31:07.774 INFO - To downstream: {"value":null}
................







 

 



