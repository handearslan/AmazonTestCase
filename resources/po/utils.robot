*** Settings ***
Library  SeleniumLibrary



*** Keywords ***
click
  [Arguments]    ${SELECTOR}
  wait until page contains element  ${SELECTOR}
  click element  ${SELECTOR}

input
  [Arguments]    ${SELECTOR}  ${TEXT}
  wait until page contains element  ${SELECTOR}
  clear element text  ${SELECTOR}
  click element  ${SELECTOR}
  input text  ${SELECTOR}  ${TEXT}

hover
  [Arguments]  ${SELECTOR}
  wait until page contains element  ${SELECTOR}
  mouse over    ${SELECTOR}


