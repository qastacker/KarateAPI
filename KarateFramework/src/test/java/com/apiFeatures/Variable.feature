##
Feature: Test of your feature

Background: Created for initialize variable
* def a = 20;
* def b = 'First Testing'
  
  Scenario: Create a variable
    Given def a1 = 30;
    And def b1 = ' Executed';
    Then print 'first output is', a+b
    Then print 'sec output is', a1+b1
    Then print 'thir output is', a+a1
    Then print 'fourth output is', b+b1
    
    
    Scenario: Access a variable
    Given def a2 = 50;
    And def b2 = ' for all'
    Then print 'first output is', a+b
    Then print 'thir output is', a2+b2
    * def aa = a+a2
    Then print 'thir output is', aa
    * def bb = b+b2
    Then print 'fourth output is', bb
    

