Feature:  Books Category

  Background:   User is on nopCommerce Books Category page

    Scenario:   User should navigate to Books category page and filters are visible
     Given      User is on homepage
      When      User click on Books category page
      And       User navigate to Books category page
      Then      User can see "Sort by", "Display", "Grid and "List"


      Scenario Outline:     User should navigate 'Sort by' filter
        Given     User click on Books Category page
        When      User click on Books category page
        And       User navigated to Books category page
        And       User click on "Sort by" filter dropdown
        And       User click sort by "<Filters>"
        Then      User can see "<Result>" relevant output for all list of filters
        Examples:
        |   Filters               |               Result                                |
        |   Name: A to Z          |   Products Sorted in alphabetical order A to Z      |
        |   Name: Z to A          |   Products sorted in alphabetical order Z to A      |
        |   Price: Low to High    |   Products sorted with the price in decending order 'Low to High'   |
        |   Price: High to Low    |   Products sorted with the price in acendenting order 'High to Low'   |
        |   Created on            |   Products sorted by product date of added to the site as recently added products should show first |

        Scenario Outline:     User should navigate 'Display' filter
          Given     User is on homepage
          When      User click on Books Category page
          And       User  navigated to Books category page
          And       User click on "Display" filter dropdown
          And       User click on Display "<Filters>"
          Then      User can see "<Result>" relevant output for all list of filters
          Examples:
          |   Filters     |             Result                |
          |      3        |   3 products displayed in page    |
          |      6        |   6 products displayed in page    |
          |      9        |   9 products displayed in page    |

          Scenario:     User should display page in 'Grid' format
            Given       User is on homepage
            When        User click on Books Category page
            And         User navigated to Books category page
            And         User click on 'Grid' icon
            Then        User can see products in Grid format

            Scenario:   User should display page in 'List' format
              Given     User is on homepage
              When      User click on Books Category page
              And       User navigated to Books category page
              And       User click on 'List'
              Then      User can see products in list format

































