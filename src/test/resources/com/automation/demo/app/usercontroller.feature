@UserController
Feature: Get users - OK tests

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  @GetAllUsersOk
  Scenario: Get users - Ok test
    * def email = 'john_wick01@gmail.com'
    * def name = 'John Wick'
    * def user = call read('classpath:com/automation/demo/app/steps/createnewuser.feature')
    * call read('classpath:com/automation/demo/app/steps/userok.feature')

