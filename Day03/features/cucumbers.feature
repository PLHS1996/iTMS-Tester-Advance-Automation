Feature: Login function
    As a user,
    I want to login in to website,
    So that I can access successfully

    Scenario Outline: Login invalid
        Given Go to the login page
        When Enter username: '<username>' and password: '<password>'
        And Press login
        Then '<result>' result should be listed
        Examples:
            | username | password            | result                    |
            | sonplh   | 123456!             | Your username is invalid! |
            | tomsmith | SuperSecretPassword | Your password is invalid! |

    Scenario: Login valid
        Given Go to the login page
        When Enter username: 'tomsmith' and password: 'SuperSecretPassword!'
        And Press login
        Then  'You logged into a secure area!' result should be listed