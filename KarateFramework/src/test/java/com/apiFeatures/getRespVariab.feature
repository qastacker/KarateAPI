Feature: Featureed to get 200 request

  Background: setup the Basepath
  Given url 'https://reqres.in'
  
  Scenario: To list users in page two
    Given path '/api/users?page=2'
    When method get
    And status 200
    And print 'first respone is:'
    And print response
    And match response == 
    """
    {
  "page": 1,
  "per_page": 6,
  "total": 12,
  "total_pages": 2,
  "data": [
    {
      "id": 1,
      "name": "cerulean",
      "year": 2000,
      "color": "#98B2D1",
      "pantone_value": "15-4020"
    },
    {
      "id": 2,
      "name": "fuchsia rose",
      "year": 2001,
      "color": "#C74375",
      "pantone_value": "17-2031"
    },
    {
      "id": 3,
      "name": "true red",
      "year": 2002,
      "color": "#BF1932",
      "pantone_value": "19-1664"
    },
    {
      "id": 4,
      "name": "aqua sky",
      "year": 2003,
      "color": "#7BC4C4",
      "pantone_value": "14-4811"
    },
    {
      "id": 5,
      "name": "tigerlily",
      "year": 2004,
      "color": "#E2583E",
      "pantone_value": "17-1456"
    },
    {
      "id": 6,
      "name": "blue turquoise",
      "year": 2005,
      "color": "#53B0AE",
      "pantone_value": "15-5217"
    }
  ],
  "support": {
    "url": "https://reqres.in/#support-heading",
    "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
  }
}
    """
     
    Scenario: To get praticular second user with json format
    Given path '/api/users/2'
    And header Accept = 'application/json'
    When method get
    And status 200
    And print 'JSON respone is:' 
    And print response
    
    Scenario: To list users in page two and validate specific property
    Given path '/api/users?page=2'
    When method get
    And status 200
    And print 'Match respone is:'
    And print response
    And match response contains deep {"per_page": 6}
