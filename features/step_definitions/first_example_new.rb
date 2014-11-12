When(/^I open practiceselenium website$/) do
  @browser.goto "http://www.practiceselenium.com/"
end

Then(/^I print the title$/) do
  puts @browser.title
end


Then(/^I expect the title to be "([^"]*)"$/) do |arg|
  actualTitle = @browser.title
  expectedTitle = arg
  expect(actualTitle).to eq(expectedTitle)
end

Then(/^I click checkout button$/) do
  @browser.link(:text => 'Check Out').when_present.click
end