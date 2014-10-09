Then(/^I click view "([^"]*)" view details$/) do |arg|
    puppynames = @browser.find_elements(:class => 'name')
    brook_index = puppynames.find_index { |name| name.text == arg}
    view_details_buttons = @browser.find_elements(:class => 'rounded_button')
    view_details_buttons[brook_index.to_i].click
end

And(/^I navigate to page "([^"]*)"$/) do |page_number|
  # The -> results in "invalid multibyte char (US-ASCII) (SyntaxError)" if used
  # @browser.find_element(:link_text => 'Next →').click
  @browser.link(:text => "#{page_number}").click
end

Then(/^I find and print all male and female puppies$/) do
  puppy_details = @browser.elements(:class => 'details')
  puppy_names = @browser.elements(:class => 'name')
  indexes_females = Array.new
  indexes_males = Array.new
  puppy_details.each_with_index  do |element,index|
    if(element.text.include? "Female")
      indexes_females << index
    else
      indexes_males << index
    end
  end

  puts "total # of females: #{indexes_females.size} and they are....."

  indexes_females.each do |i|
    puts  puppy_names[i].text
  end unless indexes_females.size == 0
  
  puts "total # of males: #{indexes_males.size} and they are....."
  indexes_males.each do |i|
    puts  puppy_names[i].text
  end unless indexes_males.size == 0
end


Then(/^I find page "([^"]*)" and click it$/) do |page_number|
  #Observe that page_number is already an integer because of transformations
  # Page 2 link has href=/agency/index?page=2 and it is part of div whose class="pagination"
  div_element = @browser.element(:class => 'pagination')
  page_2_element = div_element.link(:text => '2')
  page_2_element.click

  # wait for page url to contain page=2
  wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  wait.until { @browser.url.include? "page=2"}
end