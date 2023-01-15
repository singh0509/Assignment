
*** Keywords ***
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
    choose file     ${uploadResume}    ${resume}
    sleep   1
    Scroll Element Into View        ${email}
    click element       ${salutation}
    Click element   ${Mr.}
    Input Text      ${FName}     ${FirstName}
    Input Text      ${LName}       ${LastName}
    Input Text      ${email}       ${mailID}
    Input Text      ${contactNo}       ${PhoneNumber}
    Input Text      ${street}           ${address}
    Input Text      ${city}      ${agra}
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
    Input Text      ${whyNumadic}       ${thisCompany}
    click element   ${+Addsymbol}
    Input Text      ${university}     Saraswati University
    Input Text      ${department}     IT
    Input Text      ${degree}     B.Tech
    click element   ${+Add}
    Input Text      ${post}     QA Engineer
    Input Text      ${employer}     xyz Pvt Ltd
    Input Text      ${summary}     summary
    Input Text      ${linkedIn}            ${LinkedInProfile}
    sleep   1
    click element    ${submit}

Invalid LinkedIn URL
    Scroll Element Into View      ${linkedIn}
    Input Text      ${linkedIn}       Invalid
    Wait Until Element Is Visible   ${error}

