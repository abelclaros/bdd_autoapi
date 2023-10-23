@comments @acceptance

Feature: Comments

  @project_id @comment_id
  Scenario: Verify GET request returns all the current comments in a given project
    Given I set the base url and headers
    When I call to comments endpoint using "GET" method using the "comment_data" as parameter
    """

    """
    Then I receive a 200 status code in response

  @project_id
  Scenario: Verify POST creates a new comment

    Given I set the base url and headers
    When I create a new comment on a existing project
    Then I receive a 200 status code in response

