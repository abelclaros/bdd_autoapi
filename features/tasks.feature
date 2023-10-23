@tasks @acceptance

Feature: Tasks

  Scenario:  Verify GET all tasks is returning all data correctly
  As a user I want to GET the tasks from TODOIST API

    Given I set the base url and headers
    When I call to tasks endpoint using "GET" method using the "None" as parameter
    Then I receive a 200 status code in response

  @project_id
  Scenario: Verify POST creates a new task

    Given I set the base url and headers
    When I call to tasks endpoint using "POST" method using the "task_data" as parameter
    """
    {
      "content": "TASK NEW",
      "due_string": "tomorrow at 12:00"
    }
    """
    Then I receive a 200 status code in response

  @task_id
  Scenario: Verify GET a task returns a tasks data correctly

    Given I set the base url and headers
    When I call to tasks endpoint using "GET" method using the "task_id" as parameter
    Then I receive a 200 status code in response

  @task_id
  Scenario: Verify POST updates a task

    Given I set the base url and headers
    When I call to tasks endpoint using "POST" method using the "update_task_name" as parameter
    """
    {
      "content": "TASK UPDATED",
      "due_string": "tomorrow at 08:00"
    }
    """
    Then I receive a 200 status code in response

    @task_id
    Scenario: Verify POST closes a task

      Given I set the base url and headers
      When I call to tasks endpoint using "POST" method using the "CLOSE" as parameter
      Then I receive a 204 status code in response

  @task_id
  Scenario: Verify POST reopens a task

    Given I set the base url and headers
    When I call to tasks endpoint using "POST" method using the "REOPEN" as parameter
    Then I receive a 204 status code in response

  @task_id
  Scenario: Verify DELETE deletes a task

    Given I set the base url and headers
    When I call to tasks endpoint using "DELETE" method using the "None" as parameter
    Then I receive a 204 status code in response