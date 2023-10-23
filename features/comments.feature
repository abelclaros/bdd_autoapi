@comments @acceptance

Feature: Comments

  @project_id @comment_id
  Scenario: Verify GET request returns all the current comments in a given project
    Given I set the base url and headers
    When I call to comments endpoint using "GET" method using the "project_id" as parameter
    Then I receive a 200 status code in response

  @project_id
  Scenario: Verify POST creates a new comment

    Given I set the base url and headers
    When I create a new comment on a existing project
    Then I receive a 200 status code in response

  @project_id @comment_id
  Scenario: Verify GET request returns a single comment given its comment_id
    Given I set the base url and headers
    When I call to comments endpoint using "GET" method using the "comment_id" as parameter
    Then I receive a 200 status code in response

  @project_id @comment_id
  Scenario: Verify POST request updates a given comment
    Given I set the base url and headers
    When I call to comments endpoint using "POST" method using the "update_comment_content" as parameter
    """
    {
      "content": "COMMENT UPDATED"
    }
    """
    Then I receive a 200 status code in response

  @project_id @comment_id
  Scenario: Verify DELETE request deletes a given comment
    Given I set the base url and headers
    When I call to tasks endpoint using "DELETE" method using the "None" as parameter
    Then I receive a 204 status code in response
