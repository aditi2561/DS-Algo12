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
#USING HARDCODED USERNAME AND PASSWORD , DATA DRIVEN USING EXCEL FILE 
@tree
Feature:  Tree page
	Scenario Outline: user navigate to Tree page and works on Overview of Trees 1st link in the Tree
	Given user login with username "Numpyninja95AT" and password "sdet95batchAT"
	Given user clicks "Get started"  in Tree field  
    When  user click "Overview of Trees" first link  in the Tree 
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed          
    Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |	

	Scenario Outline: user does Terminologies in Trees	
	Given user is in Tree homepage 
	When  user click "Terminologies" 2nd link in the Tree 
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed    
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
	Scenario Outline: user does Types of Trees	
	Given user is in Tree homepage 
	When  user click "Types of Trees" 3rd link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
      
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
	Scenario Outline: user does Tree Traversals	
	Given user is in Tree homepage 
	When  user click "Tree Traversals" 4th link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
     
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
	Scenario Outline: user does Traversal-Illustration	
	Given user is in Tree homepage  
	When  user click "Traversal-Illustration" 5th link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
      
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
	Scenario Outline: user does Binary Trees	
	Given user is in Tree homepage  
	When  user click "Binary Trees" 6th link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
    And   user navigate to homepage   
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
		
	Scenario Outline: user does Types of Binary Trees	
	Given user is in Tree homepage 
	When  user click "Types of Binary Trees" 7th link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
      
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
	Scenario Outline: user does Implementation in Python 	
	Given user is in Tree homepage 
	When  user click "Implementation in Python" 8th link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
     
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
	Scenario Outline: user does Binary Tree Traversals	
	Given user is in Tree homepage  
	When  user click "Binary Tree Traversals" 9th link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
      
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
	Scenario Outline: user does Implementation of Binary Trees	
	Given user is in Tree homepage  
	When  user click "Implementation of Binary Trees" 10th link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
    And   user navigate to homepage   
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
		
	Scenario Outline: user does Applications of Binary Trees	
	Given user is in Tree homepage 
	When  user click "Applications of Binary Trees" 11th link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
      
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
	
	Scenario Outline: user does Binary Search Trees	
	Given user is in Tree homepage 
	When  user click "Binary Search Trees" 12th link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
      
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |
		Scenario Outline: user does Implementation of BST	
	Given user is in Tree homepage 
	When  user click "Implementation of BST" 13th link in the Tree
    Then  user clicks "Try here"   
    Then  user enters code in tryEditor from "<sheetName>" and <rownumber>  then click run , output is printed 
    And   user navigate to homepage  
     Examples:  
	|sheetName      |rownumber|
	|pythonCode		|0 		  |

