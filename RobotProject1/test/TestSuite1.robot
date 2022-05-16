*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suite SetUp    
Suite Teardown    Log    I am inside Test Suite TearDown    
Test Setup    Log    I am inside Test case Setup    
Test Teardown    Log     I am inside Test case Teardown

Default Tags    Sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...     
    
MySecondTest
    Log    I am inside 2nd Test
    
MyThirdTest
    Log    I am inside 3rd Test
        
# FirstSeleniumTest
    # Open Browser                https:google.com        chrome
    # Set Browser Implicit Wait        2
    # Click Button    id=L2AGLb    
    # Set Browser Implicit Wait        5
    # Input Text                    name=q                Automation Step by Step    
    # Press Keys    name=q    ENTER
    # Sleep                            2   
    # # Click Button    name=btnK     
    # Sleep                            2
    # Close Browser
    # Log                        Test Completed!    
    
# SampleLoginTest
    # [Documentation]               This is a sample login test
    # Open Browser                ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element                id=welcome    
    # Click Element                link=Logout   
    # Sleep                        2 
    # Close Browser
    # Log                        Test Completed    
    # Log    This was executed by %{username} on %{os}
    
*** Variables ***
${URL}                        https://opensource-demo.orangehrmlive.com/
@{CREDENTIAL}        Admin    admin123
&{LOGINDATA}        username=Admin        password=admin123

*** Keywords ***
LoginKW
    Input Text                    id=txtUsername           @{CREDENTIAL}[0]   
    Input Password                id=txtPassword           &{LOGINDATA}[password]
    Click Button                    id=btnLogin  