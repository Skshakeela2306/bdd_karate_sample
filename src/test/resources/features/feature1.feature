Feature: get posts

  @smoketest
  Scenario: Testing valid GET endpoint
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When method GET
    Then status 200

  Scenario: Testing the response of a GET endpoint
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method GET
    Then status 200
    And match $ contains {"userId":1}

  @smoketest
  Scenario: Testing a POST endpoint with request body
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request {"userId": 1, "id": 1000, "title": "wishes", "body": "hi kalam sir"}
    When method POST
    Then status 201
