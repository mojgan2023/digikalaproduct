***Settings***
Documentation  testcase click on different product category
Library  SeleniumLibrary
Resource  ../Resource/product.robot
Resource  variables.robot
Suite Setup  Open Page
Test Setup  Open Page
Suite Teardown  Close Browser
Test Template  select product  


***Test Cases***
select product bag  ${Bag}  ${product1} 
select product headscarf  ${HairTie}  ${product2} 


