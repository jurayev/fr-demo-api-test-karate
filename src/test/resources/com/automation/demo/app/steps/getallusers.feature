@GetAllUsersStep
Feature: Get all users and list results

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  @UserCreated
  Scenario: User created - ok
    Given path '/user/all'
    When method GET
    Then status 200