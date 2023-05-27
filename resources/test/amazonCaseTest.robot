*** Settings ***
Resource  ../app/amazonCaseApp.robot
Resource    ../app/utilsApp.robot
Library    SeleniumLibrary



Test Setup    Begin Web Test
Test Teardown    End Web Test
Resource    ../app/utilsApp.robot
Resource    ../app/amazonCaseApp.robot



*** Test Cases ***
Check Login
   amazonCaseApp.Check Login
   amazonCaseApp.Check Add to Cart



