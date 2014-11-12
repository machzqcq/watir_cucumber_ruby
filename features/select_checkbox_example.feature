Feature: Demonstrating the use of select and check box

  Scenario: Check box example
    When I open practiceselenium form on website
    And I check black tea
    And I check red tea
    Then I hit ok button
    And I expect to go back to welcome page
