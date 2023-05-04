@DataStructure
Feature: DataStructure page
# USING CONFIG READER TO READ USERNAME AND PASSWORD FROM CONFIG.PROPERTIES,CONSTANTS,DATADRIVEN USING EXCEL FILE
   @DataStructure
   Scenario Outline: user navigate to datastructure page
   Given user login with username "USERNAME" and password "PASSWORD" given through config
   Given user launch DataStructure page
   When click on timecomplexity ,tryHere,and,tryEditor assesment page is open
   Then user enters code from <sheetNumber> and <rownumber> then click run,code is printed
   Then user navigate to homepage
   Examples:
   |sheet Number |rownumber|
   |1                |0     |
   |1                |1     |