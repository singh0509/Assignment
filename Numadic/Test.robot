*** Settings ***

Library     SeleniumLibrary

*** Variable ***
${browser}      chrome
${url}          https://jobs.numadic.com/jobs/Careers
${Title}        JOIN OUR CREW
${filter}       css:[class="dropdown"]
${Engineering}  css:[data-value="Engineering"]
${QAEngineer}   xpath://*[@class="cw-1-title"][text()="QA Engineer"]
${NumadicIotPvt.Ltd.}   Numadic Iot Pvt. Ltd.
${Interested}       xpath://*[@id="detail-page-applybtn"]//*[text()="I'm interested"]
${salutation}       css:[class="lyteDummyEventContainer"][aria-controls="Salutation"]
${uploadResume}     xpath: //*[@id="rec-easyresume"]/div/lyte-fileupload/div
${email}            xpath: //*[@id="rec-form_53264000000003155"]/div/lyte-input/div/input
${Mr.}              xpath://*[@id="Lyte_Drop_Item_1"]c
${FName}            xpath://*[@class="crc-form-field cnl-firstname-row "]//lyte-input/div/input
${LName}            xpath://*[@id="rec-form_53264000000003151"]//lyte-input/div/input
${contactNo}        xpath: //*[@id="rec-form_53264000000003161"]/div/div/lyte-input/div/input
${street}           xpath: //*[@id="rec-form_53264000000003169"]/div/lyte-input/div/input
${city}             xpath: //div[@class="wbf-doublewrapper wbf-tabular-false wbf-attachment-"]/div[2]//lyte-dropdown/div[1]/lyte-drop-button/lyte-input/div/input
${state}            xpath: //div[@class="wbf-doublewrapper wbf-tabular-false wbf-attachment-"]/div[3]//lyte-dropdown/div[1]/lyte-drop-button/lyte-input/div/input
${pinCode}          xpath: //div[@class="wbf-doublewrapper wbf-tabular-false wbf-attachment-"]/div[4]//lyte-dropdown/div[1]/lyte-drop-button/lyte-input/div/input
${country}          xpath: //*[@id="rec-form_53264000000003177"]/div/lyte-input/div/input
${company}          xpath: //*[@id="rec-form_53264000000003181"]/div/lyte-input/div/input
${Designation}      xpath: //*[@id="rec-form_53264000000003183"]/div/lyte-dropdown/div[1]/lyte-drop-button
${projectLead}      xpath: //*[text()="Project-Lead"]
${skill}            xpath: //*[@id="addSkills"]
${ROC}              xpath: //*[@id="rec-form_53264000000279009"]/div/lyte-input/div/input
${CurrentCTC}       xpath: //*[@id="rec-form_53264000000285107"]/div/lyte-input/div/input
${ExpectedCTC}      xpath: //*[@id="rec-form_53264000000285115"]/div/lyte-input/div/input
${whyNumadic}       xpath: //*[@id="rec-form_53264000000279013"]/div/lyte-input/div/input
${+Addsymbol}       xpath: //*[@id="rec-form_53264000000002559_53264000000201042"]/div/div/a
${university}       xpath: //*[@id="53264000000201044_1_tab"]/div/input
${department}       xpath: //*[@id="53264000000201046_1_tab"]/div/input
${degree}           xpath: //*[@id="53264000000201048_1_tab"]/div/input
${+Add}             xpath: //*[@id="rec-form_53264000000002559_53264000000201078"]/div/div/a
${post}             xpath: //*[@id="53264000000201080_1_tab"]/div/input
${employer}         xpath: //*[@id="53264000000201082_1_tab"]/div/input
${summary}          xpath: //*[@id="53264000000201084_1_tab"]/div/textarea
${linkedIn}         xpath: //*[@id="rec-form_111222333445"]/div/lyte-input/div/input
${submit}           xpath: //*[@id="cw-submit-btn"]/button/lyte-yield

*** Test Cases ***

Verify and Fill the details
    Verify header Text
    From the filter by dropdown, select ‘Engineering’
    From the job options, select ‘QA Engineer’
    Verify the page title as ‘Numadic Iot Pvt. Ltd. - QA Engineer in‘
    Verify the button ‘I’m interested’ and perform a click action
    Verify validation for all fields (leaving notice period as blank, so that an application does not submitted)

*** Keywors ***
Verify header Text
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Page Should Contain     ${Title}

From the filter by dropdown, select ‘Engineering’
    Scroll Element Into View        ${filter}
    click element   ${filter}
    sleep  1
    wait until element is visible     ${Engineering}
    Click Element      ${Engineering}
    Page Should Contain     Engineering
    wait until element is visible   ${QAEngineer}

From the job options, select ‘QA Engineer’
    click element    ${QAEngineer}

Verify the page title as ‘Numadic Iot Pvt. Ltd. - QA Engineer in‘
    Page Should Contain     ${NumadicIotPvt.Ltd.}
    Page Should Contain     QA Engineer

Verify the button ‘I’m interested’ and perform a click action
    wait until element is visible     ${Interested}
    click element       ${Interested}

Verify validation for all fields (leaving notice period as blank, so that an application does not submitted)
    wait until element is visible        ${salutation}       20
    choose file     ${uploadResume}    John Smith - Resume.pdf
    sleep   1
    Scroll Element Into View        ${email}
    click element       ${salutation}
    Click element   ${Mr.}
    Input Text      ${FName}     John
    Input Text      ${LName}       Smith
    Input Text      ${email}       johnsmith@gmail.com
    Input Text      ${contactNo}       1234567890
    Input Text      ${street}           abs street
    Input Text      ${city}      Agra
    sleep   1
    click element   ${city}
    Input Text      ${state}       UP
    sleep   1
    click element   ${state}
    sleep   1
    Scroll Element Into View       ${Designation}
    Input Text      ${pinCode}       667788
    Input Text      ${country}       India
    Input Text      ${company}       XYZ Pvt Ltd.
    click element   ${Designation}
    sleep  1
    click element   ${projectLead}
    sleep   1
    Scroll Element Into View      ${ROC}
    click element    ${company}
    Input Text      ${skill}      Automation Testing
    press keys      ${skill}     ENTER
    Input Text      ${skill}       Manual Testing
    press keys      ${skill}     ENTER
    Input Text      ${skill}       API Testing
    press keys      ${skill}     ENTER
    Scroll Element Into View      ${ROC}
    Input Text      ${CurrentCTC}       10 LPA
    Input Text      ${ExpectedCTC}       20 LPA
    Input Text      ${ROC}       Looking for remote job
    sleep   1
    Scroll Element Into View      ${whyNumadic}
    Input Text      ${whyNumadic}       I feel my skills are particularly well-suited to this position
    click element   ${+Addsymbol}
    Input Text      ${university}     Saraswati University
    Input Text      ${department}     IT
    Input Text      ${degree}     B.Tech
    click element   ${+Add}
    Input Text      ${post}     QA Engineer
    Input Text      ${employer}     xyz Pvt Ltd
    Input Text      ${summary}     summary
    Input Text      ${linkedIn}            https://www.linkedin.com/in/aabbcc/
    sleep   2
    click element    ${submit}
    sleep  10