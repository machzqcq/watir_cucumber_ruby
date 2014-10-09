
require 'watir-webdriver'


Before do

  @browser = Watir::Browser.new :chrome

end


After do
  @browser.close
end

# The Before block above will execute for every scenario
Before('@Tagie') do

  @browser = Watir::Browser.new :ie

end

