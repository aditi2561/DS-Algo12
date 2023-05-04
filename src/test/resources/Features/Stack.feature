#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
#USING DATA DRIVEN BY EXCEL FILE  AND HARCODED USERNAME AND PASSWORD
@stack
Feature:  Stack page
Scenario Outline: user navigate to Stack page and works on Operations in Stack
	Given user login with username "Numpyninja95AT" and password "sdet95batchAT"
	Given user clicks "Get started"  in Stack field  
    When  user click "Operations in Stack" first link  in the Stack
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
            
    Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
Scenario Outline: user does Implementation Stack	
	Given user is in Stack homepage 
	When  user click "Implementation Stack" second link  in the Stack
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
        
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
Scenario Outline: user does Applications	
	Given user is in Stack homepage 
	When  user click "Applications" third link in the Stack 
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed  
    And   user navigate to homepage  
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
