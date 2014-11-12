Feature: This is my first example feature

  Scenario: Open practice selenium website
    When I open practiceselenium website

  # open cucumber.yml and output html reports using --format html --out reports.html
  Scenario: Open website and print title
    When I open practiceselenium website
    Then I print the title

  Scenario: Expect wrong title
    When I open practiceselenium website
    Then I expect the title to be "blah"

  Scenario: Click the Check out link
    When I open practiceselenium website
    Then I click checkout button