*** Settings ***
Library    SeleniumLibrary



*** Test Cases ***
LogIn
    Open Browser    https://google.com    headlesschrome
    Maximize Browser Window
TitleShouldbe
    Title Should Be    Google
    Input Text    //input[@title='Search']    SeleniumLibrary
    Click Button    //div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    
	
