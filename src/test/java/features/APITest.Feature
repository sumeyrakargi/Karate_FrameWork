Feature: API Test
  Background:
    * url 'https://automationexercise.com/api'
  Scenario:API GET
    Given path  '/productsList'
    When method Get
    Then status 200
  #  * print response
    And karate.log(response)

  Scenario: POST All Product
    * def query = {"responseCode": 405,"message": "This request method is not supported."}
    Given path '/productsList'
    And request query
    When method Post
    Then status 200

  Scenario: API 3 GET
    Given path '/brandsList'
    When method get
    Then status 200
    # And karate.log(response)
    * def jsResponse = response.brands
    * def brandcount = jsResponse.length
    * print brandcount
    * match brandcount == 34
