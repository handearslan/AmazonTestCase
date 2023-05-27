*** Settings ***

Library    SeleniumLibrary
Resource    ../po/utils.robot
Library    DebugLibrary


*** Variables ***
${accept}=  id=sp-cc-accept
${email} =  css=#ap_email
${URL} =  https://www.amazon.com.tr/
${password} =  css=#ap_password
${clickCategory} =  xpath=//a[@data-csa-c-slot-id='nav_cs_2']
${addCart} =  id=add-to-cart-button
${firstProduct} =  xpath=//div[@cel_widget_id='MAIN-SEARCH_RESULTS-1']
${delete} =  xpath=//input[@value='Sil']


*** Keywords ***
Go to Home Page
  Go To    ${URL}
  utils.click  ${accept}
Go to Login Page
  utils.hover  id=nav-link-accountList
  utils.click  xpath=//div[@id='nav-flyout-ya-signin']//a[@data-nav-role='signin']
Enter Email
  utils.click   ${email}
  utils.input   ${email}  testtesst011@gmail.com
Click Continue Button
  utils.click   css=#continue
Enter Password
  utils.click   ${password}
  utils.input   ${password}  test1234
Click Login Button
  utils.click           id=signInSubmit
Add First Product to Cart
  utils.click  ${clickCategory}
  utils.click  id=sobe_d_b_2_1
  Sleep  2
  utils.click  ${firstProduct}
  utils.click  ${addCart}
  Wait Until Page Contains    Sepete Eklendi
Add second product to cart
  utils.click  ${clickCategory}
  utils.click  id=sobe_d_b_2_3
  Sleep  2
  utils.click  ${firstProduct}
  utils.click  ${addCart}
  Wait Until Page Contains    Sepete Eklendi
Check Basket
  utils.click  id=nav-cart-count
  Wait Until Page Contains  Ara toplam (2 ürün):
Delete Product
  utils.click  ${delete}
Check Basket Again
  Wait Until Page Contains  Ara toplam (1 ürün):







