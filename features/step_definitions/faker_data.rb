When(/^I open google search$/) do
  @browser.goto "http://www.google.com"
end

Then(/^I type fake name and search for it$/) do
  firstname = Faker::Name.first_name
  lastname = Faker::Name.last_name
  constructed_name = "#{firstname} #{lastname}"
  search_field = @browser.text_field(name: 'q')
  search_field.clear
  search_field.send_keys(constructed_name,:enter)
  expect(search_field.text).should equal?(constructed_name)

  sample_name = Faker::Name.name
  search_field.clear
  search_field.send_keys(sample_name,:enter)
  expect(search_field.text).should equal?(sample_name)


end

When(/^I open google maps$/) do
  @browser.goto "http://maps.google.com"
end

Then(/^I type fake address$/) do
  searchbox = @browser.text_field(id: 'searchboxinput')

  street_address = Faker::Address.street_name
  city = Faker::Address.city
  state = Faker::Address.state
  zip = Faker::Address.zip
  fake_address=street_address+','+city+','+state+' '+zip

  searchbox.send_keys(fake_address,:enter)
  sleep 5

end

And(/^I set faker locale$/) do
  Faker::Config.locale = 'de'
end