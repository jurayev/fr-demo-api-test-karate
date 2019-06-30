@BookingController
Feature: Get bookings - ok tests

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  @GetAllBookingsOk
  Scenario: Get all bookings for current date - ok test
    * def users = call read('classpath:com/ryanair/automation/demo/app/steps/getallusers.feature')
    * call read('classpath:com/ryanair/automation/demo/app/steps/createnewbooking.feature')
    * call read('classpath:com/ryanair/automation/demo/app/steps/getbookingsokv1.feature')
    * call read('classpath:com/ryanair/automation/demo/app/steps/getbookingsokv2.feature')