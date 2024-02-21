Feature: Featureed to get 200 request

  Background: setup the Basepath
  Given url 'https://reqres.in'
  
  Scenario: To list users in page two
    Given path '/api/users?page=2'
    When method get
    And status 200
    And print response
    
    Scenario: To get praticular second user with json format
    Given path '/api/users/2'
    And header Accept = 'application/json'
    When method get
    And status 200
    And print response
    
    Scenario: To get praticular second user with xml format
    Given path '/api/users/2'
    And header Accept = 'application/xml'
    When method get
    And status 200
    And print response
