When(/^I navigate to elemental selenium website$/) do
  @browser.goto "http://the-internet.herokuapp.com/hovers"
end

And(/^I hover over avatar$/) do
  avatar = @browser.element(class: 'figure')
  avatar.when_present.hover

end

Then(/^I wait for caption to appear before progressing$/) do
  Selenium::WebDriver::Wait.new(timeout: 2).until do
    @browser.element(class: 'figcaption').exists?
  end
  user_url = @browser.element(css: '.figcaption > a').attribute_value('href')
  expect(user_url).to eq('http://the-internet.herokuapp.com/users/1')
end

