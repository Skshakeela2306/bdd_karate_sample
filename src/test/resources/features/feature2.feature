Feature: create new POST DDT

  Scenario Outline: create a post from given details.
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request {"userId":<x>, "id":<y>, "title":<z>, "body":<w>}
    When method post
    Then status <sc>
    Then print response

    Examples: 
      | x  | y   | z      | w                             | sc  |
      | 10 | 101 | wishes | all the best Rahul gandhi     | 201 |
      | 10 | 102 | wishes | do singing in haven---Mr.Balu | 201 |
      | 10 | 102 | wishes | do singing in haven---Mr.Balu | 200 |
