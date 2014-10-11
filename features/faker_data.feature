Feature: Using Faker gem to sample different types of data
  #http://rubydoc.info/gems/faker/1.4.3/frames

  Scenario: Getting fake Name data
    When I open google search
    Then I type fake name and search for it

  Scenario: Getting fake address data
    When I open google maps
    Then I type fake address

    #values for all locales: https://github.com/stympy/faker/tree/master/lib/locales
    # Practice with all possible data sets and create custom data sets
  Scenario: Get fake data by locale
    When I open google maps
    And I set faker locale
    Then I type fake address