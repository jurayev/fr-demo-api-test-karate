@UserOKStep
Feature: Get users - ok step

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  @LastUserAdded
  Scenario: User created and added to the list at the end - ok
    Given path '/user/all'
    When method GET
    Then status 200
    And match response[-1:].id == ['#(user.response.id)']

  @UserOkBody
  Scenario: Get all users - verify response body
    Given path '/user/all'
    When method GET
    Then status 200
    And match each response[*].email == '#regex ^\\w+@\\w+\\.\\w+$'
    And match each response[*].name == '#regex ^[a-zA-Z]+\\s?[a-zA-Z]+$'
    * def ids = $[*].id
    And match each ids == '#regex ^\\w+@\\w+\\.\\w+-[0-9]+\\.[0-9]+$'
    * print 'user ids:', ids
    And match each response[*].bookings == '#array'

  @UserOkJsonBody
  Scenario: Get all users - verify response body from Json array
    Given path '/user/all'
    When method GET
    Then status 200
    And match each response ==
    """
      {
        email: '#regex ^\\w+@\\w+\\.\\w+$',
        name: '#string',
        id: '#regex ^\\w+@\\w+\\.\\w+-[0-9]+\\.[0-9]+$',
        bookings: '#array'
      }
    """
    * def ids = $[*].id
    * print 'user ids:', ids