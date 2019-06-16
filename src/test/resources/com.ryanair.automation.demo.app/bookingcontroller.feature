@BookingController
Feature: [Task 7 - Data tables] Get bookings - ok tests

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  @Task7
  Scenario: Get all bookings for current date - ok test
    * def users = call read('steps/getallusers.feature')
    * call read('steps/createnewbooking.feature')
    * call read('steps/getbookingsokv1.feature')
    * call read('steps/getbookingsokv2.feature')