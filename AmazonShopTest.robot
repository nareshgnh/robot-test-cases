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
    set selenium implicit wait    30
    click link    //*[@id="nav-signin-tooltip"]/a
    input text    //*[@id="ap_email"]   nareshgnh996@gmail.com
    click button    //*[@id="continue"]
    input text    //*[@id="ap_password"]    846Amazon@5850752
    click button    //*[@id="signInSubmit"]

SearchingProduct
    input text    //*[@id="twotabsearchtextbox"]   shirts for men
    click button    //input[@id='nav-search-submit-button']

AddingShirts
    set selenium implicit wait    10
    click link    //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[2]/div[1]/h2/a
    scroll element into view    //*[@id="native_dropdown_selected_size_name"]
    click button    //input[@id='add-to-cart-button']
    page should contain    Added to Cart
AddingPants
    set selenium implicit wait    5
    input text    //*[@id="twotabsearchtextbox"]   Amazon Essentials Men's Slim-Fit chino pant
    click button    //input[@id='nav-search-submit-button']
    click link    //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[2]/div[1]/h2/a
    select from list by label    dropdown_selected_size_name     30W x 28L
    select from list by label    quantity   1
    click button    //*[@id="add-to-cart-button"]

#AddingCap
#    set selenium implicit wait    5
#    input text    //*[@id="twotabsearchtextbox"]   adidas Men's Release 2 Structured Stretch Fit Cap
#    click button    //input[@id='nav-search-submit-button']
#    scroll element into view    //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div[1]/span/a
#    click link    //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div[1]/span/a
#    select from list by label    dropdown_selected_size_name    Small-Medium
#
#AddingShoes
#    set selenium implicit wait    5
#    input text    //*[@id="twotabsearchtextbox"]   Skechers Men's Afterburn Memory-Foam Lace-up Sneaker
#    click button    //input[@id='nav-search-submit-button']
#    click link    //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/div/div/div/div[3]/div[1]/h2
#    select from list by label    dropdown_selected_size_name   10
#    select from list by label    quantity   1
#    click button    //*[@id="add-to-cart-button"]
#

Chekout
    click button    //*[@id="sc-buy-box-ptc-button"]/span/input
    title should be    Select a Payment Method - Amazon.com Checkout
close browser
    close browser





