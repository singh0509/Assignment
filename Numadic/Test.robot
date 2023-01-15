
*** Settings ***
Library     SeleniumLibrary
Resource    Locators.robot
Resource    Lables.robot
Resource    Resource.robot

*** Test Cases ***
Verify and Fill the details
    Verify header Text
    From the filter by dropdown, select ‘Engineering’
    From the job options, select ‘QA Engineer’
    Verify the page title as ‘Numadic Iot Pvt. Ltd. - QA Engineer in‘
    Verify the button ‘I’m interested’ and perform a click action
    Verify validation for all fields (leaving notice period as blank, so that an application does not submitted)

Testing negative scenarios.
    Invalid LinkedIn URL

# Every time this test case will fail as I have used the failure scenarios to capture the screenshot
Test case for Validation of Screenshot
    Wait Until Element Is Not Visible   ${NPerror}