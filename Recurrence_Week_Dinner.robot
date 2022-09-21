*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

PR01 Automation to enter Community Waterford Recurrence Weekly (Dinner)
        [Tags]      Validation Test       Case 1

# Open Community Waterford Engage360
     Click Element    ${Community}
     Drag And Drop    ${Waterford}      ${Community}
     Click Element    ${Waterford}

#  Enter Dinning Window
     execute javascript           ${Dinning}


# Click Community Waterford
      scroll element into view            ${Community}
      element should be visible           ${Community}     Waterford Community
      mouse over                          ${Community}

# Enter Button Add Menu Item
     execute javascript          ${Add Menu Item}






# complete General Info correctly

# Title
    input text          ${dining_title}       BBQ Ribs

# Description
    input text          ${dining_description}        pork ribs,tomato puree,smoked paprika

# Image
  input text        ${image}       BBQ Sauce

# click Magnifier search
  click element         ${Search}

# Search Image
  scroll element into view              id=image_555068
  click element                         id=image_555068

# Click DONE
   click element       ${DONE}

 # visible the Image
   Execute Javascript              window.scrollTo(0,document.body.scrollHeight)






# complete Identifiers correctly


   scroll element into view            ${tags}

# Text tags
    input text         ${tags}           Taste Exquisite
    press keys         ${tags}       ENTER
    input text         ${tags}           Spike
    press keys         ${tags}       ENTER
    input text         ${tags}           Special Dinner
    press keys         ${tags}       ENTER

# Meal Category
# Dinner
    wait until element is visible       ${Dinner}
    click element                       ${Dinner}

# select Button Hide On Print
    select checkbox     ${Hide_Print}
    unselect checkbox   ${Hide_Print}






# complete Recurrences correctly

 # enter Star Date Calendar
    click element        ${Start-Date}

# Enter Botton Calendar
   click element      ${Calendar_Btn}

# Double Clic advance two month
   Double click element    ${advance_month}

# Back One Month
    click element       ${back_month}

# Modify Date New Month and new day
    execute javascript      document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[20].click()

# Tab Repets
#"Recurrence Weekly" and Enter
    click element         ${Tab_Repeats}
    click element         ${Weekly_Recurrence}

# Modify the days for the recurrences weekly
    # Sunday,Wednesday,Saturday
    click element    ${Sunday}
    click element    ${Monday}
    click element    ${Friday}
    click element    ${Saturday}

# Modify Every Weeks (decrease number of weeks)
    double click element                ${modify_day}
    choose file                         ${modify_day}           1

# Increase Occurrences
     double click element            ${modify_Occurrences}
     choose file                     ${modify_Occurrences}      10

# Visible el message Weeks modified and ocurrences modified and the dates agree with the days Recurrence Window
    wait until element is visible       //div[contains(text(),'Sunday, Wednesday, Saturday ')]
    element should contain              //div[contains(text(),'Sunday, Wednesday, Saturday ')]     Occurs every week on  Sunday, Wednesday, Saturday

# Click Save button Recurrence
     wait until element is visible           ${SaveRecurrence}
     set focus to element                    ${SaveRecurrence}
     click element                           ${SaveRecurrence}

# Verify that the message after closing the Recurrences window is the same as the one in Recurrences under Repeats(Weekly)
    wait until element is visible       //div[contains(text(),'Sunday, Wednesday, Saturday ')]
    element should contain              //div[contains(text(),'Sunday, Wednesday, Saturday ')]     Occurs every week on  Sunday, Wednesday, Saturday

# Click Save Button Dinning
     wait until element is visible           ${Save Dining}
     scroll element into view                ${Save Dining}
     double click element                    ${Save Dining}

# Visible Message  "This Meal has been added succescfully"
      wait until element is visible        ${Message_Accept}
      element should be visible            ${Message_Accept}         This meal has been added succesfully

# Reload page to eliminate waiting and code simulation
      reload page

# Click Date Served Visible the date of the last dinner captured
    scroll element into view                 ${Date Served}
    wait until element is visible            ${Date Served}
    element should be visible                ${Date Served}             Date Served
    click element      ${Date Served}

# Click Print Visible the capture Dinning
      scroll element into view                 ${Log_Print}
      wait until element is visible            ${Log_Print}
      set focus to element                     ${Log_Print}
      click button                             ${Log_Print}

# Next Verify Print Dinning
     click element               ${right_arrow}
     double click element        ${right_arrow}
     click element               ${right_arrow}
     click element               ${right_arrow}
     scroll element into view           //*[@id="containerDiningMenuContentImageIndividualElements"]/div[3]/div/div[3]/div[2]/div[7]/div/div


    # Close Print Window
    click element      ${Print_Close}

# enter a captured Meal
     execute javascript        document.getElementsByClassName('MuiGrid-root rowEngageStyleList MuiGrid-container MuiGrid-align-items-xs-center MuiGrid-justify-content-xs-center')[0].click()

 # Simulate enter to Calendar
      wait until element is visible           ${Start-Date}
      set focus to element                    ${Start-Date}
      mouse down                              ${Start-Date}

# Delete the capture of a dinner and the recurrence
    wait until element is visible       ${Delete_Dinning}
    set focus to element                ${Delete_Dinning}
    click element                       ${Delete_Dinning}

# Delete Dinner
  execute javascript                  document.getElementsByClassName('MuiGrid-root alingCenter MuiGrid-container MuiGrid-item')[8].click()


