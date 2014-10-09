Then(/^I hover over credit cards$/) do
  # A known issue with hover is to have the mouse pointer away from the browser screen area
  @browser.driver.manage.window.maximize
  credit_card_element = @browser.element(:id => 'nav-primary-cc')
 credit_card_element.when_present.hover
end

Then(/^I hover over credit cards using perform$/) do
  @browser.driver.manage.window.maximize
  credit_card_element = @browser.element(:id => 'nav-primary-cc')
  credit_card_element.when_present.hover
  #Selenium has another function called perform
  # @browser.action.move_to(credit_card_element).perform
end

Then(/^I hover over credit cards and click browse cards$/) do
  # A known issue with hover is to have the mouse pointer away from the browser screen area
  @browser.driver.manage.window.maximize
  credit_card_element = @browser.element(:id => 'nav-primary-cc')
  credit_card_element.when_present.hover
  sleep 5
  @browser.link(:text => 'Browse All Cards').when_present.click
end

And(/^I verify the page-heading to be "([^"]*)"$/) do |arg|
  actual_title = @browser.element(:id => 'page-heading').text
  expected_title = arg
  expect(actual_title).should match expected_title
end