*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

PR03 Automation to enter Community Waterford Recurrence Weekly (Dinner)
        [Tags]      Validation Test       Case 3

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

# Go up to the labels tab
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

    double click element        ${New_day}
    #execute javascript      document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[20].click()

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
    wait until element is visible       ${Mess_Recu_Window}
    element should contain              ${Mess_Recu_Window}    Occurs every week on  Sunday, Wednesday, Saturday

# Click Save button Recurrence
     wait until element is visible           ${SaveRecurrence}
     set focus to element                    ${SaveRecurrence}
     click element                           ${SaveRecurrence}

# Verify that the message after closing the Recurrences window is the same as the one in Recurrences under Repeats(Weekly)
    wait until element is visible       ${Mess_Recu_Window2}
    element should contain              ${Mess_Recu_Window2}     Occurs every week on  Sunday, Wednesday, Saturday

# Click Save Button Dinning
     wait until element is visible           ${Save Dining}
     scroll element into view                ${Save Dining}
     double click element                    ${Save Dining}

# Visible Message  "This Meal has been added succescfully"
      wait until element is visible        ${Message_Accept}
      element should be visible            ${Message_Accept}         This meal has been added succesfully

# Reload page to eliminate waiting and code simulation
      reload page

# Click Print Visible the capture Dinning
      scroll element into view                 ${Log_Print}
      wait until element is visible            ${Log_Print}
      set focus to element                     ${Log_Print}
      click button                             ${Log_Print}


    # Close Print Window
     click element      ${Print_Close}


# enter a captured Meal
    scroll element into view           ${BBQ Ribs}
    click element                      ${BBQ Ribs}

 # Simulate enter to Calendar
      wait until element is visible           ${Start-Date}
      set focus to element                    ${Start-Date}
      mouse down                              ${Start-Date}

# Enter Delete button Confirm Delete Menu Item
    wait until element is visible       ${Delete_Dinning}
    set focus to element                ${Delete_Dinning}
    click element                       ${Delete_Dinning}

# Click Button "Yes,DeleteAllOccurrences"
    click element              ${Yes,DeleteAllOccurrences}

