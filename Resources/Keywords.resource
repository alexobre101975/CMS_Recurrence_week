*** Keywords ***

web setup

      Open Browser    ${website}       ${browser}
      Maximize Browser Window
      Set Selenium Implicit Wait             20 s
      Wait Until Element is Visible              css=#kc-header
      Title Should Be    Log in to ENGAGE360

     # Credentials Corrects
      Wait Until Element Is Visible    id=username
      Click Element     id=username
      Input Text        id=username       ${Email}
      Click Element     id=password
      Input Text        id=password       ${Password}
      Click Button        name=login

