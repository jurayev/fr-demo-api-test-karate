@GetBookingsOKv1Steps
Feature: [Task 5 - JavaScript helpers] Get bookings - v1

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true
    * def getCurrentDate = function (dateFormat) {var date = new java.util.Date(Date.now());var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');if (!dateFormat) {dateFormat = 'yyyy-MM-dd';}return new SimpleDateFormat(dateFormat).format(date);}
    * def format = 'yyyy-MM-dd'

  @Task5
  Scenario: Get all bookings for current date - v1
    Given path '/booking'
    And param date = getCurrentDate(format)
    When method GET
    Then status 200