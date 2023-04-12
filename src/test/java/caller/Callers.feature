Feature: Caller
  Background:
    * url 'https://petstore.swagger.io/v2/pet'
  Scenario Outline: Find pet By ID <petID>
    Given path <petID>
    Then method get
    * print response
    Examples:
      | petID |
      |call read('data/data.csv') |

