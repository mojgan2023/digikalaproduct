***Settings***
Documentation  product category 
Library     SeleniumLibrary
Resource    variables.robot
***Variables***
${MainMenu}  xpath://span[@data-cro-id="header-main-menu"]
${category}  xpath://*[contains(text(), "محصولات بومی و محلی")]
${local}  xpath://*[@alt= "پوشیدنی های بومی محلی"]
${Accessory}  xpath://*[@alt= "اکسسوری بومی و محلی"]
${Womens}  xpath://*[@alt= "اکسسوری بومی و محلی زنانه"]
${Type}  //*[text()='جنس']
${AllTypes}  //*[text()='پارچه']
${Checkbox}  xpath://*[text()='پارچه']/parent::*/parent::*/parent::*/input

***Keywords***
Open Page
   Set Selenium Speed  ${SPEED}
   Set Selenium Timeout  ${Timeout}
   open Browser   ${url}  ${Browser}
   Maximize Browser Window
select product 
   [Arguments]  ${Filter}  ${product}
   Wait Until Element Is Visible  ${MainMenu}
   Click Element  ${MainMenu}
   Click Element  ${category}
   Wait Until Element Is Visible  ${local}
   Scroll Element Into View  ${local}
   click Element  ${local}
   Wait Until Element Is Visible  ${Accessory}
   click Element  ${Accessory}
   Wait Until Element Is Visible  ${Womens}
   click Element  ${Womens}
   Wait Until Element Is Visible  ${Filter}
   click Element  ${Filter}
   Wait Until Element Is Visible  ${Type}
   Execute Javascript  document.evaluate("${Type}", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
   Wait Until Element Is Visible  ${AllTypes}
   Execute Javascript  document.evaluate("${AllTypes}", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
   Wait Until Element is Visible  ${product}
   #Checkbox Should Be Selected  ${Checkbox}
   Sleep  8
   Scroll Element Into View  ${product}
   Click Element  ${product}
   Page Should Contain Element  ${AllTypes}



  