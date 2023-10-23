@labels @acceptance

Feature: Labels

  @label_id
  Scenario: Verify GET request returns all labels
    Given I set the base url and headers
    When I call to labels endpoint using "GET" method using the "None" as parameter
    Then I receive a 200 status code in response


  Scenario: Verify POST request creates a new label
    Given I set the base url and headers
    When I call to labels endpoint using "POST" method using the "label_data" as parameter
    """
    {
      "name": "NEW LABEL"
    }
    """
    Then I receive a 200 status code in response

  @label_id
  Scenario: Verify GET request returns a specific label given its id
    Given I set the base url and headers
    When I call to labels endpoint using "GET" method using the "label_id" as parameter
    Then I receive a 200 status code in response

  @label_id
  Scenario: Verify POST request updates a given label
    Given I set the base url and headers
    When I call to comments endpoint using "POST" method using the "update_label_name" as parameter
    """
    {
      "name": "LABEL UPDATED"
    }
    """
    Then I receive a 200 status code in response

  @label_id
  Scenario: Verify DELETE request deletes a given label
    Given I set the base url and headers
    When I call to labels endpoint using "DELETE" method using the "None" as parameter
    Then I receive a 204 status code in response