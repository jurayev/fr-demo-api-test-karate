@CreateNewBookingStep
Feature: New booking step

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true
    * def getCurrentDate = read('classpath:js/getCurrentDate.js')
    * def format = 'yyyy-MM-dd'

  @NewBooking
  Scenario Outline: Create new booking
    Given path '/booking'
    And request
    """
      {
        date: '#(getCurrentDate(format))',
        destination: '<destination>',
        id: '#(users.response[0].id)',
        origin: '<origin>'
      }
    """
    When method POST
    Then status 201
    And match response ==
    """
      {
        idBooking: '#regex ^<origin>-<destination>-[0-9]{1}\\.[0-9]+$',
        idUser: '#(users.response[0].id)',
        origin: '<origin>',
        destination: '<destination>',
        date: '#(getCurrentDate(format))'
      }
    """
    Examples:
      | origin | destination |
      | WRO    | MAD         |
      | MAD    | DUB         |