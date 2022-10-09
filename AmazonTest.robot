*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${Browser}  headlesschrome
${Browser}  chrome
${Url}  https://www.amazon.com

*** Test Cases ***
LoginAmazon
    open browser    ${Url}  ${Browser}
    maximize browser window
    click link    //*[@id="nav-signin-tooltip"]/a
    input text    //*[@id="ap_email"]   nareshgnh996@gmail.com
    click button    //*[@id="continue"]
    input text    //*[@id="ap_password"]    846Amazon@5850752
    click button    //*[@id="signInSubmit"]
    set selenium implicit wait    10


SearchingProduct
    input text    //*[@id="twotabsearchtextbox"]   shirts for men
    click button    //input[@id='nav-search-submit-button']

AddingCart
    set selenium implicit wait    10
    click link    //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[2]/div[1]/h2/a
    scroll element into view    //*[@id="native_dropdown_selected_size_name"]
    click button    //input[@id='add-to-cart-button']
    page should contain    Added to Cart
SearchingProduct2
    set selenium implicit wait    5
    input text    //*[@id="twotabsearchtextbox"]   Amazon Essentials Men's Athletic-Fit 5-Pocket Stretch Twill Pant
    click button    //input[@id='nav-search-submit-button']
    click link    //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[6]/div/div/div/div/div[2]/div[1]/h2/a
    select from list by label    dropdown_selected_size_name     30W x 30L
    select from list by label    quantity   2
    click button    //*[@id="add-to-cart-button"]
    page should contain    Added to Cart

Chekout
    click button    //*[@id="sc-buy-box-ptc-button"]/span/input
    title should be    Select a Payment Method - Amazon.com Checkout
close browser
    close browser





