Feature: Login
    As a user,
    I want to login in the website,
    So I need to have username and password

    Scenario: Login vaild
        Given the login page is opened successfull
        When user input the username is 'tomsmith' and password is 'SuperSecretPassword!'
        Then user can login to the system

    Scenario: Login with invalid username and password
        Given the login page is opened successfull
        When user input username and password are wrong
        Then user cannot login to the system with username and password are wrong

    Scenario: Login with invalid password
        Given the login page is opened successfull
        When user input username is 'tomsmith' and password is wrong
        Then user cannot login to the system with username and password is wrong