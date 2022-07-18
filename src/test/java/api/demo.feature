Feature:Testing
//@okwong
  Background:
  * url 'https://reqres.in/api'
  #  * def expectedOutput = read('..data/allUsers.json')
   #* def jsonPayLoad = read('..data/post.json')
   # * configure headers = {Content-Type : 'application/json'}



  Scenario: Testing valid GET endpoint for user 2
    Given path 'users/2'
    When method GET
    Then status 200
    Then print response
    And match response.data.id ==2
   #And match response == expectedOutput


  Scenario: Testing valid GET endpoint for user 3
    Given path 'users/3'
    When method GET
    Then status 200
    Then print response
    And match response.data.avatar == 'https://reqres.in/img/faces/3-image.jpg'
  # And match response == expectedOutput


  Scenario: Post Request user
   Given path '/users'
   # And request jsonPayLoad
    And request '{"email": "janet.weaver@reqres.in","first_name": "Test","last_name": "Weaver",}'
    And header 'Content-Type' = 'application/json'
    When method POST
    Then status 201
    Then print response
 # * def first_name = result.response.data.first_name
   # Then print 'first_name_value---', first_name
   # And match response.data.first_name == "Okwong"


  @ignore
  Scenario: Post Request
  #  Given path 'users'
   # And request jsonPayLoad
   # When method POST
   # Then status 201
   # Then print response
    #And match response.data.first_name == "Okwong"


@ignore
  Scenario: Testing valid GET endpoint api
    Given path 'users/2'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput
    And match response.data.id ==2
    And match response.data.last_name =="Weaver"
    And match response.data.first_name != null
    And match job_code == null
  * def job_code = response.data.job.code


