@sections @acceptance

Feature: Sections

  Scenario:  Verify GET all sections is returning all data correctly
      As a user I want to GET the projects from TODOIST API

    Given I set the base url and headers
    When I call to sections endpoint using "GET" method using the "None" as parameter
    Then I receive a 200 status code in response

  @project_id
  Scenario:  Verify POST section creates the section correctly
      As a user I want to create a section from TODOIST API

    Given I set the base url and headers
    When I call to sections endpoint using "POST" method using the "section data" as parameter
    """
    {
      "project_id": "project_id",
      "name": "Section created"
    }
    """
    Then I receive a 200 status code in response

  @section_id
  Scenario:  Verify GET one section is returning all data correctly
  As a user I want to GET the projects from TODOIST API

    Given I set the base url and headers
    When I call to sections endpoint using "GET" method using the "section_id" as parameter
    Then I receive a 200 status code in response

  @section_id
  Scenario:  Verify DELETE section delete the section correctly
      As a user I want to delete a section from TODOIST API

    Given I set the base url and headers
    When I call to sections endpoint using "DELETE" method using the "section_id" as parameter
    Then I receive a 204 status code in response

  @section_id
  Scenario: Verify POST section updates the section correctly

    Given I set the base url and headers
    When I call to sections endpoint using "POST" method using the "update_section_name" as parameter
    """
    {
      "name": "SECTION UPDATED"
    }
    """
    Then I receive a 204 status code in response