Feature: Featureed to get 200 request

  Background: setup the Basepath
  Given url 'http://restapi.adequateshop.com'
  
  Scenario: To get praticular second user with xml format
    Given path '/api/Traveler?page=1'
    And header Accept = 'application/xml'
    When method get
    And status 200
    And print 'XML respone is:' 
    And print response
    And print 'respone:'
    #And print 'respone page:', /TravelerinformationResponse/page
    #And print 'respone total_pages:', /TravelerinformationResponse/total_pages
    #And print 'respone id:', /TravelerinformationResponse/travelers/Travelerinformation[2]/id
    #And match /TravelerinformationResponse/travelers/Travelerinformation[3]/email == 'van.19v@mail.ru'
    
    ## check in postman and it works