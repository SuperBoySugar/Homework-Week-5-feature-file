Feature: Top Menu Category

  Background:   User is on nopCommerce homepage
    Given       User open Google Chrome browser
    And         User Enter URL: https://demo.nopCommerce.com
    Then        User is on nopCommerce homepage

    Scenario Outline:    User should see the top menu tabs on homepage
      Given       User is on homepage
      Then        User can see top menu "<Categories>" on homepage

      Examples:
      |   Categories          |
      |   Computers           |
      |   Electronics         |
      |   Apparel             |
      |   Digital Downloads   |
      |   Books               |
      |   Jewelry             |
      |   Gift Cards          |