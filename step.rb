Then (/^I redirected to (.+) page$/) do |page_name|
  current_path.should == path_to(page_name)
end
Then(/^I see "(.*?)" appear$/) do |something|
  page.should have_content "#{something}"
end

Then(/^I not see "(.*?)" appear$/) do |something|
  page.should_not have_content "#{something}"
end

# --- https://gist.github.com/mattheworiordan/919116
# --- alert and confirm box
# --- hoang 03/03/16
# @javascript
# Scenario: confiming when saving inactive
#   Given I expect to click "OK" on a confirmation box saying "Are you sure?"
#    When I press "Save"
#    Then the confirmation box should have been displayed
#     And I should see "TV" in the "Campaign Keywords" section
#
# Scenario: alert when form is not valid
#   Given I expect to click on an alert box saying "Please complete all fields in this form"
#    When I press "Save"
#    Then the alert box should have been displayed
    
Given /^I expect to click "([^"]*)" on a confirmation box saying "([^"]*)"$/ do |option, message|
  retval = (option == "OK") ? "true" : "false"

  page.evaluate_script("window.confirm = function (msg) {
    $.cookie('confirm_message', msg, {path: '/'});
    return #{retval};
  }")

  @expected_message = message
end

Then /^the confirmation box should have been displayed$/ do
  page.evaluate_script("$.cookie('confirm_message')").should_not be_nil
  page.evaluate_script("$.cookie('confirm_message')").should eq(@expected_message)
  page.evaluate_script("$.cookie('confirm_message', null)")
end

Given /^I expect to click on an alert box saying "([^"]*)"$/ do |message|
  page.evaluate_script("window.alert = function (msg) {
    $.cookie('alert_message', msg, {path: '/'});
    return true;
  }")
  @expected_message = message
end
Then /^the alert box should have been displayed$/ do
  page.evaluate_script("$.cookie('alert_message')").should_not be_nil
  page.evaluate_script("$.cookie('alert_message')").should eq(@expected_message)
  page.evaluate_script("$.cookie('alert_message', null)")
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

When(/^I follow on "([^"]*)"$/) do |link|
  click_link(link)
end

When(/^I follow on view "([^"]*)"$/) do
  click_link(" . Thông tin")
end

When(/^I click within "([^"]*)"$/) do |selector|
  find(selector).click()
end

# --- http://stackoverflow.com/questions/2458632/how-to-test-a-confirm-dialog-with-cucumber
# --- alert popup
# --- hoang 03/03/16

Then /^I confirm the alert popup$/ do
  page.driver.browser.switch_to.alert.accept    
end

Then /^I dismiss the alert popup$/ do
  page.driver.browser.switch_to.alert.dismiss
end

#def select_second_option(category)
 # second_option_xpath = "//*[@id='#{category}']/option[2]"
 # second_option = find(:xpath, second_option_xpath).click
  #select(second_option, :from => category)
#end

def select_by_value(id, value)
  option_xpath = "//*[@id='#{id}']/option[@value='#{value}']"
  find(:xpath, option_xpath).click
end



When /^I select the second option from "([^"]*)"$/ do |id|
  second_option = find(:xpath, "//select[@id='category']/option[@value='2']").click
  #second_option = find(:xpath, "//select[@id='size']/option[@value='2']").click
  #second_option = find(:xpath, "//select[@id='color']/option[@value='2']").click
  #second_option = find(:xpath, "//select[@id='quality']/option[@value='20']").click
  #select(second_option, :from => id)
end
When /^I select the size option from "([^"]*)"$/ do |id|
  #second_option = find(:xpath, "//select[@id='category']/option[@value='2']").click
  second_option = find(:xpath, "//select[@id='size']/option[@value='5']").click
end

When /^I select the color option from "([^"]*)"$/ do |id|
  #second_option = find(:xpath, "//select[@id='category']/option[@value='2']").click
  second_option = find(:xpath, "//select[@id='color']/option[@value='1']").click
end

When /^I select the quality option from "([^"]*)"$/ do |id|
  #second_option = find(:xpath, "//select[@id='category']/option[@value='2']").click
  second_option = find(:xpath, "//select[@id='quality']/option[@value='20']").click
end

#Then /^I should see the image "(.+)"$/ do |image|
 # expect(page).to have_xpath("//img[contains(@src, \"#{image}\")]")
#end

#Then /^I should see the image "(.+)"$/ do |image|
 # expect(page).to have_xpath('//img[@src="/yem.jpg"]')
#end
#Then /^I should see the image "(.+)"$/ do |image|
 # find('yem.jpg').click
#end
Then "I upload the file" do
  #path = File.expand_path("yem.jpg")
  #puts File.expand_path("yem.jpg")
  #puts path
  attach_file('img', 'E:/My Pictures/yem.jpg')
end



