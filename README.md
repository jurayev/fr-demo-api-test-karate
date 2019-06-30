# API tests for Ryanair demo application:

## Regular Expressions

[docs](https://confluence.ryanair.com:8444/display/QA/Task+1+-+Regular+Expressions)
1. All 3 letter words and 3 digit numbers - https://regex101.com/r/zL2Lol/1
2. Cat and cat https://regex101.com/r/3573hH/1
3. cat, rat and bat words but not cats, rats, hat, hats, brat https://regex101.com/r/o5SuT1/1
4. All sentences in double quotes https://regex101.com/r/mOmbFr/1
5. All rat words at the end of a line https://regex101.com/r/cAblef/1
6. All words with apostrophes (e.g. I'll) https://regex101.com/r/M5V76Z/1
7. All words starting with a capital letter https://regex101.com/r/uNieqd/1

## JsonPath

[docs](https://confluence.ryanair.com:8444/display/QA/Task+2+-+JSON+Path)
1. Search all flights:   `$..flights`
2. Search flights on 2018/7/22:  `$..dates[?(@.dateOut=~/2018-07-22.*/)].flights`
3. Search flights with amount greater than 100:  `$..fares[?(@.amount>100)]`
4. From previous one take only flights with fareClass equals V : `$..regularFare[?(@.fareClass=='V')]`
5. List all the amounts:  `$..amount`


## Quick start

[Project docs](https://confluence.ryanair.com:8444/display/QA/API+Testing)

[Endpoints docs](http://127.0.0.1:8900/swagger-ui.html)

How to run this suite:
- usercontroller tests: `mvn -am -e -DfailIfNoTests=false clean test -Dlevel=debug -DTest=com.ryanair.automation.demo.app.TestParallelRunner "-Dcucumber.options=--tags @UserController"`
- bookingcontroller tests: `mvn -am -e -DfailIfNoTests=false clean test -Dlevel=debug -DTest=com.ryanair.automation.demo.app.TestParallelRunner "-Dcucumber.options=--tags @BookingController"`


