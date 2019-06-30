@CreateNewUserStep
Feature: New user step

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  @NewUser
  Scenario: Create new user
    Given path '/user'
    And request
    """
      {
        email: '#(email)',
        name: '#(name)'
      }
    """
    When method POST
    Then status 201
    And match response ==
    """
      {
        email: '#(email)',
        name: '#(name)',
        id: '#regex ^\\w+@\\w+\\.\\w+-[0-9]+\\.[0-9]+$',
        bookings: '#[]'
      }
    """