When(/^I open capital one website$/) do
  @browser.goto "http://www.capitalone.com"
end

Then(/^I print the title$/) do
  puts @browser.title
end


Then(/^I expect the title to be "([^"]*)"$/) do |arg|
  actualTitle = @browser.title
  expectedTitle = arg
  expect(actualTitle).to eq(expectedTitle)
end

Then(/^I click sign\-in button$/) do
  @browser.link(:text => 'Sign In').when_present.click
end