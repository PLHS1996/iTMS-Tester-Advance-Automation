Feature: Login functionality
    In order ensure login functionality works,
    I want to run the cucumber test verify it is working

    Background: Open browser
        Given the login page is opened successfully

    Scenario Outline: Login invalid
        When user input username '<username>' and password '<password>'
        Then the message '<result>' should be displayed
        Examples:
            | username | password            | result                    |
            | sonplh   | 123456!             | Your username is invalid! |
            | tomsmith | SuperSecretPassword | Your password is invalid! |

    Scenario: Login valid
        When user input username 'tomsmith' and password 'SuperSecretPassword!'
        Then the message 'You logged into a secure area!' should be displayed