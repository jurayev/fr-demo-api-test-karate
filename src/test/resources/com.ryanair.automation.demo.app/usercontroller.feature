@UserController
Feature: [Task 6 - Request chaining] Get users - OK tests

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  @Task6
  Scenario: Get users - Ok test
    * def email = 'john_wick01@ryanair.com'
    * def name = 'John Wick'
    * def user = call read('steps/createnewuser.feature')
    * call read('steps/userok.feature')

