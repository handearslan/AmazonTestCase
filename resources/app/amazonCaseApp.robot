*** Settings ***

Library  SeleniumLibrary
Resource    ../po/amazonCase.robot
Resource    ../app/utilsApp.robot

Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Keywords ***
Check Login
  amazonCase.Go to Home Page
  amazonCase.Go to Login Page
  amazonCase.Enter Email
  amazonCase.Click Continue Button
  amazonCase.Enter Password
  amazonCase.Click Login Button
Check Add to Cart
  amazonCase.Add first product to cart
  amazonCase.Add second product to cart
  amazonCase.Check Basket
  amazonCase.Delete product
  amazonCase.Check Basket Again




