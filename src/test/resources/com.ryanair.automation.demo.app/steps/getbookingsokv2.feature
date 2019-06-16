@GetBookingsOKv2Steps
Feature: [Task 5 - JavaScript helpers] Get bookings - v2

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true
    * def getCurrentDate = read('classpath:js/getCurrentDate.js')
    * def format = 'yyyy-MM-dd'

  @Task5
  Scenario: Get all bookings for current date - v2
    Given path '/booking'
    And param date = getCurrentDate(format)
    When method GET
    Then status 200