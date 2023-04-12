Feature: petstore

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def rB =
      """
      {

  "username": "R1",
  "firstName": "Ellly",
  "lastName": "D",
  "email": "d@email.com",
  "password": "12345",
  "phone": "22316446",
  "userStatus": 0
}
      """
  Scenario: POST
    Given path '/user'
    And request rB
    When method post
    Then status 200
    And match $.message == "9223372036854771849"

