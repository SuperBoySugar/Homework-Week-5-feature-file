Feature: nopCommerce Register Funtionality

  Background: User is on Register page
    Given   User open "https//nopCommerce.com"
    When    User click on Register
    Then    User is on Register page

  Scenario:   User can able to select the Gender
    Given     User is on Register page
    When      User click on radio button for Male/Female
    Then      User can able to select

  Scenario Outline:   User can complete the Registration successfully
    Given     User is on Register page
    When      User select "<Gender>"
    And       User input "<First name>" into First name field
    And       User input "<Last name>" into Last name field
    And       User Select "<Day>", "<Month>" and "<Year>" for Date of birth field
    And       User input "<Email>" into email field
    And       User input "<Company name>" into Company name
    And       User Select Newsletter option
    And       User input "<Password>" into Password field
    And       User input "<Confirm password>" into Confirm password field
    And       User click Register button
    Then      User completed Registration successfully

    Examples:
    |   Gender    |   First name    |   Last name   |   Day   |   Month   |   Year    |   Email   |   Company name    |   Password    |   Confirm password    |
    |    Male     |   Mike          |   Brown       |   26    |   June	|	2023	|	mike123@gmail.com	|	Prime Limited	|	mb12345		|		mb12345   |