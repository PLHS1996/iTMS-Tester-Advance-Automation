Feature: Login
    As a user,
    I want to login in the website,
    So I need to have username and password

    Scenario: Login vaild
        Given the login page is opened successfull
        When user input the username and password valid
        Then user can login to the system

    Scenario: Login in-vaild
        Given the login page is opened successfull
        When user input the username and password invalid
        Then user cannot login to the system