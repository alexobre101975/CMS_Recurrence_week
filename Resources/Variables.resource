*** Variables ***
${browser}       gc
${website}       http://dev.www.engage360.evacompute.com:8080/
${Email}                    superUser
${Password}                 SuperAdmin1@
${Community}                SuperUserCombo
${Waterford}                SuperUserCombo-option-30
${Dinning}                  document.getElementById('SideNav_Menu_Dinning').click()
${Add Menu Item}            document.getElementById('dining_new_dining_btn').click()
${dining_title}             id=add_dining_title
${dining_description}       id=add_dining_description
${image}                    name=image_url
${Search}                   id=dining_search_icon
${DONE}                     id=done_btn
${tags}                     id=add_dining_tags
${Breakfast}                id=icon_6155b016d8ca9945efb2e722
${Lunch}                    id=icon_6155b016d8ca9945efb2e723
${Dinner}                   id=icon_6155b016d8ca9945efb2e724
${Hide_Print}               id=dining_hideOnPrinting_switch
${Start-Date}               id=add_dining_start_date
${Calendar_Btn}             id=Calendar_Btn_StartDate_add_dining_start_date
${advance_month}            id=calendarHeader_rightArrow
${back_month}               id=calendarHeader_leftArrow
${Current_day}               id=Calendar_Icon_Adornment_30
${Tab_Repeats}              id=RepeatValue
${Weekly_Recurrence}        id=RepeatValueWeekly
${Sunday}                   id=Sunday
${Monday}                   id=Monday
${Tuesday}                  id=Tuesday
${Wednesday}                id=Wednesday
${Thursday}                 id=Thursday
${Friday}                   id=Friday
${Saturday}                 id=Saturday
${modify_day}               id=RepeatInterval
${modify_Occurrences}       id=OccurrencesField
${Mess_Recu_Window}         id=recurrence-modal-label
${SaveRecurrence}           id=saveRecurrenceObj
${Mess_Recu_Window1}        //div[contains(text(),'Monday, Wednesday, Friday')]
${Mess_Recu_Window2}        //div[contains(text(),'Sunday, Wednesday, Saturday ')]
${Save Dining}              id=add_dining_save_btn
${Message_Accept}           id=alert_AddDining_Success
${Log_Print}                id=dining_print_icon
${right_arrow}              id=scheduler_right_arrow
${left_arrow}               id=scheduler_left_arrow
${Print_Close}              id=Print-modal-close-button
${Lemonade}                     //div[contains(text(),'Lemonade')]
${Ultimate Veggie Burger}       //div[contains(text(),'Ultimate Veggie Burger')]
${BBQ Ribs}                     //div[contains(text(),'BBQ Ribs')]
${Delete_Dinning}               id=add_dining_delete_btn
${Button No,Exit}               id=close_repair_return_btn
${Yes,DeleteAllOccurrences}    //div[contains(text(),'Yes, Delete All Occurrences')]
${Yes,DeleteThisOccurrence}    id=close_repair_close_btn
${New_day}                      //p[contains(text(),'15')]










