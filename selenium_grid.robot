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