@UserController
Feature: Get users - OK tests

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  @GetAllUsersOk
  Scenario: Get users - Ok test
    * def email = 'john_wick01@ryanair.com'
    * def name = 'John Wick'
    * def user = call read('classpath:com/ryanair/automation/demo/app/steps/createnewuser.feature')
    * call read('classpath:com/ryanair/automation/demo/app/steps/userok.feature')

