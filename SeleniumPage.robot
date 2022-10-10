*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${Url}  https://www.google.com/

*** Test Cases ***

GoogleSearch
    open browser    ${Url}     ${Browser}
    input text    //input[@title='Search']  selenium
    click button    //div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
    click link    //*[@id="rso"]/div[1]/div/div/div/div/div/div/div/div[1]/a
    set selenium implicit wait    3
    title should be    Selenium
    set selenium speed    3
    capture page screenshot    selenium.png
JavaPage
    go to   https://www.java.com
    page should contain    java
    set selenium speed    3
    capture page screenshot    java.png
linuxPage
    go to   https://www.linux.org
    title should be    Linux.org
    set selenium speed    3
    capture page screenshot    linux.png
    close browser


