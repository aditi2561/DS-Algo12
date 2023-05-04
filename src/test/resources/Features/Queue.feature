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
#USING HARDCODED USERNAME AND PASSWORD , DATA DRIVEN USING EXCEL
@queue
Feature:  Queue page
Scenario Outline: user navigate to Queue page and works on Implementation Queue in Python
	Given user login with username "Numpyninja95AT" and password "sdet95batchAT"
	Given user clicks "Get started"  in Queue field  
    When  user click "Implementation Queue in Python" first link  in the Queue
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
            
    Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
Scenario Outline: user does Implementation Using Collection.deque	
	Given user is in Queue homepage 
	When  user click "Implementation Using Collection.deque" second link  in the Queue
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
        
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
Scenario Outline: user does Implementation Using Array	
	Given user is in Queue homepage 
	When  user click "Implementation Using Array" third link in the Queue 
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed  
    And   user navigate to homepage  
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
Scenario Outline: user does Queue Operations	
	Given user is in Queue homepage 
	When  user click "Queue Operations" fourth link in the Queue 
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed  
    And   user navigate to homepage  
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
