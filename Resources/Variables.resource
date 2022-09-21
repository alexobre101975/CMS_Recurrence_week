*** Variables ***
${browser}       gc
${website}       http://dev.www.engage360.evacompute.com:8080/
${website1}      http://dev.www.engage360.evacompute.com:8080/dashboard
${Email}                    superUser
${Password}                 SuperAdmin1@
${Community}                SuperUserCombo
${Waterford}                SuperUserCombo-option-30
${LAST_30_DAYS}             id=scheduler_switch_two_options_LeftOption
${LAST_7_DAYS}              id=scheduler_switch_two_options_RightOption
${Total_Opened}             id=repairPage_Image
${Dinning}                  document.getElementById('SideNav_Menu_Dinning').click()
${Add Menu Item}            document.getElementById('dining_new_dining_btn').click()
${dining_title}             id=add_dining_title
${dining_description}       id=add_dining_description
${image}                    name=image_url
${Search}                   id=dining_search_icon
${tags}                     id=add_dining_tags
${Hide_Print}               id=dining_hideOnPrinting_switch
${Start-Date}               id=add_dining_start_date
${Calendar_Btn}             id=Calendar_Btn_StartDate_add_dining_start_date
${Breakfast}                id=icon_6155b016d8ca9945efb2e722
${Lunch}                    id=icon_6155b016d8ca9945efb2e723
${Dinner}                   id=icon_6155b016d8ca9945efb2e724
${advance_month}            id=calendarHeader_rightArrow
${back_month}               id=calendarHeader_leftArrow
${Tab_Repeats}              id=RepeatValue
${Weekly_Recurrence}        id=RepeatValueWeekly
${modify_day}               id=RepeatInterval
${modify_Occurrences}       id=OccurrencesField
${SaveRecurrence}           id=saveRecurrenceObj
${Save Dining}              id=add_dining_save_btn
${Mess_Recu_Window}         //div[contains(text(),'Monday, Wednesday, Friday')]
${Message_Accept}           id=alert_AddDining_Success
${DONE}                     id=done_btn
${Delete_Dinning}           id=add_dining_delete_btn
${Delete_All_Recurrence}    id=close_repair_close_btn
${Sunday}                   id=Sunday
${Monday}                   id=Monday
${Tuesday}                  id=Tuesday
${Wednesday}                id=Wednesday
${Thursday}                 id=Thursday
${Friday}                   id=Friday
${Saturday}                 id=Saturday
${Text_Image}               id=id_dining_header_list_image
${text Menu Item}           id=id_dining_header_list_menu_item
${Button No,Exit}           id=close_repair_return_btn
${Menu Item}                id=menu_item_deletetion_modal
${Delete_Occurrence}        id=close_repair_close_btn
${Log_Print}                id=dining_print_icon
${Date Served}              id=id_dining_header_list_date_serve
${right_arrow}              id=scheduler_right_arrow
${Print_Close}              id=Print-modal-close-button
${left_arrow}               id=scheduler_left_arrow
