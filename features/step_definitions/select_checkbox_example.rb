When(/^I open practiceselenium form on website$/) do
  @browser.goto 'http://practiceselenium.com/practice-form.html'
end

And(/^I check black tea$/) do
  @browser.checkbox(id: 'tea1').click
end

And(/^I check red tea$/) do
  @browser.checkbox(id: 'tea2').click
end

Then(/^I hit ok button$/) do
  @browser.button(id: 'submit').click
end

And(/^I expect to go back to welcome page$/) do
  buttonelement = @browser.element(id: 'wsb-button-450914890')
  p buttonelement.text
  expect buttonelement.text.should == "See Collection"
end

And(/^I select USA from continent dropdown$/) do
  @browser.select_list(id: 'continents').select "USA"
end