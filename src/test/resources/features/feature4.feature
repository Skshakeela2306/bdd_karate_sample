Feature: create post using csv file data

  Scenario Outline: create a post from given details.
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request {"userId":<x>, "id":<y>, "title":<z>, "body":<w>}
    When method post
    Then status <sc>
    Then print response

    Examples: 
      | read('mydata.csv') |
