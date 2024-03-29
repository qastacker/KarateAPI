Feature: Featureed to get 200 request

  Background: setup the Basepath
  Given url 'https://reqres.in'
  
  Scenario: To list users in page two
    Given path '/api/users?page=2'
    When method get
    And status 200
    And print 'My respones is:'
    And print response
    And print response.data[0].id
    And print 'third respone:'
    And print 'third respone id:', response.data[2].id
    And print 'third respone name:', response.data[2].name
    And print 'third respone year:', response.data[2].year
    And print 'third respone color:', response.data[2].color
    And print 'third respone pantone_value:', response.data[2].pantone_value
    And match response.data[2].id == 3
    
    Scenario: To list users in page two using fuzzy matcher
    Given path '/api/users?page=2'
    When method get
    And status 200
    And print 'My respones is:'
    And print response
    And print response.data[0].id
    And print 'third respone:'
    And print 'third respone id:', response.data[2].id
    And print 'third respone name:', response.data[2].name
    And print 'third respone year:', response.data[2].year
    And print 'third respone color:', response.data[2].color
    And print 'third respone pantone_value:', response.data[2].pantone_value
    And match response.data[2].id == '#present'
    And match response.data[2].year == '#number'
    And match response.data[2].year == '#notnull'
    And match response.data[2].color == '#string'
    And match response.data[2].year == '#? _ >= 2000' 
    And match response.data[2].name == '#string? _.length >= 5' 
  
  Scenario: To get JSON and validate file
    Given path '/api/users?page=2'
    When method get
    And status 200
    And print 'My respones is:'
    And print response
    * def actualResp = read("classpath:com/Util/jResp.json")
    And print "File ==>",actualResp
    And match response == actualResp
    

