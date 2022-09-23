*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

PR02 Automation to enter Community Waterford Recurrence Weekly (Lunch)
        [Tags]      Validation Test       Case 2

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
    input text          ${dining_title}       Ultimate Veggie Burger

# Description
    input text          ${dining_description}       mushrooms, black beans,onion,garlic,Tomatoes,Lettuce

# Image
  input text        ${image}       Veggie Burger

# click Magnifier search
  click element         ${Search}

# Search Image
  scroll element into view              id=image_4614022
  click element                         id=image_4614022

# Click DONE
   click element       ${DONE}

# visible the Image
    Execute Javascript              window.scrollTo(0,document.body.scrollHeight)





# complete Identifiers correctly
    scroll element into view            ${tags}

# Text tags
    input text    ${tags}           Taste Exquisite
    press keys         ${tags}       ENTER
    input text    ${tags}           Special Lunch
    press keys         ${tags}       ENTER

# Meal Category
# Breakfast
    wait until element is visible       ${Lunch}
    click element                       ${Lunch}

# Unselect Button Hide On Print
    select checkbox      ${Hide_Print}
    unselect checkbox    ${Hide_Print}


# complete Recurrences correctly
 # enter Star Date Calendar
    click element                           ${Start-Date}

# Tab Repets
#"Recurrence Week" and Enter
    click element         ${Tab_Repeats}
    click element         ${Weekly_Recurrence}

# Modify the days for the recurrences weekly
    click element    ${Sunday}
    click element    ${Monday}
    click element    ${Tuesday}
    click element    ${Wednesday}
    click element    ${Thursday}
    click element    ${Friday}


# Window Recurrence
# modify day
    double click element                ${modify_day}
    choose file                         ${modify_day}           4

# modify Occurrences
     double click element            ${modify_Occurrences}
     choose file                     ${modify_Occurrences}      8

# Click Save button Recurrencia
     wait until element is visible           ${SaveRecurrence}
     set focus to element                    ${SaveRecurrence}
     click element                           ${SaveRecurrence}

 # enter to Calendar
      wait until element is visible           ${Start-Date}
      set focus to element                    ${Start-Date}
      click element                           ${Start-Date}

# Click Save Button Dinning
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
     Sleep      1
     click element               ${right_arrow}
     sleep      1
     double click element        ${right_arrow}
     sleep      1
     click element               ${right_arrow}
     sleep      1
     click element               ${right_arrow}


# Close Print Window
    click element      ${Print_Close}

    # enter a captured Meal
    scroll element into view           ${Ultimate Veggie Burger}
    click element                      ${Ultimate Veggie Burger}


 # Simulate enter to Calendar
      scroll element into view                ${Start-Date}
      set focus to element                    ${Start-Date}
      mouse down                              ${Start-Date}

# Enter Delete button Confirm Delete Menu Item
    wait until element is visible       ${Delete_Dinning}
    set focus to element                ${Delete_Dinning}
    click element                       ${Delete_Dinning}

# Click Button "No, Exit"
    click element               ${Button No,Exit}

 # Simulate enter to Calendar
      scroll element into view                ${Start-Date}
      set focus to element                    ${Start-Date}
      mouse down                              ${Start-Date}

# Enter Delete button Confirm Delete Menu Item
    wait until element is visible       ${Delete_Dinning}
    set focus to element                ${Delete_Dinning}
    click element                       ${Delete_Dinning}

# Click Button "Yes, Delete This Ocurrences"
    click element               ${Yes,DeleteThisOccurrence}

# Reload page to eliminate waiting and code simulation
     reload page

# enter a captured Meal
    scroll element into view            ${Ultimate Veggie Burger}
    click element                       ${Ultimate Veggie Burger}

# Enter Delete button Confirm Delete Menu Item
    wait until element is visible       ${Delete_Dinning}
    set focus to element                ${Delete_Dinning}
    click element                       ${Delete_Dinning}

# Click Button "Yes,DeleteAllOccurrences"
    click element              ${Yes,DeleteAllOccurrences}


