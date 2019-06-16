@GetAllUsersStep
Feature: [Task 7 - Data tables] Get all users and list results

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  @Task7
  Scenario: User created - ok
    Given path '/user/all'
    When method GET
    Then status 200


