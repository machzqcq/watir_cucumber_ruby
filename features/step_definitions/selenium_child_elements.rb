And(/^I get the row element$/) do
  # There are multiple elements with that class, we get only the first element at this point
  @div_element = @browser.element(:class => "puppy_list")
end

Then(/^I retrieve image child element$/) do
  # It is a good idea to whiteboard and explain HTML DOM here
  # Retrieve img element from div
  img_element_by_tag = @div_element.element(:tag_name => 'img')
  expect(img_element_by_tag.attribute_value('alt')).to eql("Brook")
end

Then(/^I retrieve the div and then subsequently the image element$/) do
  # Retrieve another div and then img from that div
  div_element_by_class = @div_element.element(:class => 'image')
  img_element_by_class = div_element_by_class.element(:tag_name => 'img')
  expect(img_element_by_class.attribute_value('alt')).to eql("Brook")
end

Then(/^I retrieve the details element$/) do
  #Retrieve details from div row element
  details_element_by_class = @div_element.element(:class => "details")
  expect(details_element_by_class.text).to include("Golden Retriever")
end

Then(/^I retrieve the name element$/) do
  # Retrieve name from div
  name_element_by_class = @div_element.element(:class => "name")
  expect(name_element_by_class.text).to eql("Brook")
end

Then(/^I retrieve the h4 element$/) do
  #There are two h4's, so retrieve the second one and verify its value
  details_element_by_class = @div_element.element(:class => "details")
  h4_details_element = details_element_by_class.elements(:tag_name => 'h4')[1]
  expect(h4_details_element.text).to eql("Female")
end

Then(/^I retrieve the div and then subsequently the image element chained$/) do
  # Retrieve another div and then img from that div
  img_element_by_class = @div_element.element(:class => 'image').element(:tag_name => 'img')
  expect(img_element_by_class.attribute_value('alt')).to eql("Brook")
end

Then(/^I click on view details by passing tagname "([^"]*)" and class "([^"]*)"$/) do |tag_name, class_name|
  # Observe how we have used both tag name and class to identify the element
  # Also observe that there are multiple elements having the locator information
  # The driver would retrieve only the first one if we dont find_elements
  view_detail_button = @div_element.element(:tag_name => tag_name,:class_name => class_name)
  view_detail_button.click
  adopt_me_button = @browser.element(:class => 'rounded_button')
  expect(adopt_me_button.attribute_value('value')).to eql("Adopt Me!")
end