*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

PR01 Automation to enter Community Waterford Recurrence Weekly (Breakfast)
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
    input text          ${dining_title}        Lemonade

# Description
    input text          ${dining_description}       Water, lemons, sugar, and ice shake

# Image
  input text        ${image}        Lemonade

# click Magnifier search
  click element         ${Search}

# Search Image
  scroll element into view              id=image_3571083
  click element                         id=image_3571083

# Click DONE
   click element       ${DONE}

# visible the Image
    Execute Javascript              window.scrollTo(0,document.body.scrollHeight)






# complete Identifiers correctly
    scroll element into view            ${tags}

# Text tags
    input text    ${tags}           Frozen
    press keys         ${tags}       ENTER
    input text    ${tags}           Bittersweet
    press keys         ${tags}       ENTER

# Meal Category
# Breakfast
    wait until element is visible       ${Breakfast}

# Select and Unselect Button Hide On Print
    select checkbox          ${Hide_Print}
    unselect checkbox        ${Hide_Print}
#
#
#



# complete Recurrences correctly
 # enter Star Date Calendar
    click element                           ${Start-Date}

# Enter Botton Calendar
   click element      ${Calendar_Btn}

# Click advance month next
   click element       ${advance_month}
# Back month
    click element       ${back_month}


# Click in current Day
    Double click element      ${Current_day}


# Visible Tab Repets "Recurrence Daily" and Enter
    click element         ${Tab_Repeats}
    click element         ${Weekly_Recurrence}

# Visible Window Recurrence
# modify day
    double click element                ${modify_day}
    choose file                         ${modify_day}           2

# modify Occurrences
     double click element            ${modify_Occurrences}
     choose file                     ${modify_Occurrences}      4


# Visible el message Weeks modified and ocurrences modified and the dates agree with the days Recurrence Window
    wait until element is visible       ${Mess_Recu_Window}
    element should contain              ${Mess_Recu_Window}      Occurs every 2 weeks on  Monday, Wednesday, Friday

# Click Save button Recurrencia
     wait until element is visible           ${SaveRecurrence}
     set focus to element                    ${SaveRecurrence}
     click element                           ${SaveRecurrence}

# Verify that the message after closing the Recurrences window is the same as the one in Recurrences under Repeats(Weekly)
    wait until element is visible       ${Mess_Recu_Window1}
    element should contain              ${Mess_Recu_Window1}      Occurs every 2 weeks on  Monday, Wednesday, Friday

 # enter to Calendar
      wait until element is visible           ${Start-Date}
      set focus to element                    ${Start-Date}
      click element                           ${Start-Date}

# Click Save Button Dinner
      wait until element is visible           ${Save Dining}
      scroll element into view                ${Save Dining}
      click element                           ${Save Dining}

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

# Next Verify Print Dinning
     click element               ${right_arrow}


    # Close Print Window
     click element      ${Print_Close}

## enter a captured Meal
    scroll element into view        ${Lemonade}
    click element                   ${Lemonade}

 # Simulate enter to Calendar
      wait until element is visible           ${Start-Date}
      set focus to element                    ${Start-Date}
      mouse down                              ${Start-Date}

# Delete the capture of a dinner and the recurrence
    wait until element is visible       ${Delete_Dinning}
    set focus to element                ${Delete_Dinning}
    click element                       ${Delete_Dinning}

# Click button Yes,Delete All Ocurrences
    scroll element into view            ${Yes,DeleteAllOccurrences}
    click element                       ${Yes,DeleteAllOccurrences}
