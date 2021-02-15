Feature: get post

  Scenario: Testing the response of a GET endpoint
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method GET
    Then status 200
    And match $ contains {"userId":#number}
