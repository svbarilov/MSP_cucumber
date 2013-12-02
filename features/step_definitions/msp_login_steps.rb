Given(/^I am on msp login page$/) do
  visit LoginPage
  end

When(/^I enter an invalid name: "(.+)"$/) do |name|
  on(LoginPage).user_email = name
end

When(/^I enter a blank password$/) do
  on(LoginPage).user_password = nil
end

When(/^I click login$/) do
  on(LoginPage).login_button
end

When(/^I enter an invalid password: "(.+)"$/) do |password|
  on(LoginPage).user_password = password
end

When(/^I enter a blank name$/) do
  on(LoginPage).user_email = nil
end

When(/^I enter a valid password$/) do
  on(LoginPage).user_password = "Password123"
end

When(/^I enter a valid name$/) do
  on(LoginPage).user_email = "arogovskoy@marketron.com"
end

Then(/^I should see the error message "(.+)"$/) do |error_message|
  on(LoginPage).error_text.should include error_message
end

Then(/^Login is successful$/) do
  wait_for_login
  on(MspHomePage).search_field?.should be_true
end



########################################################################################################################
### WAITING METHODS GO HERE #####


def wait
  sleep 2
end

def wait_for_login
  @page = on(MspHomePage)
  @page.wait_until(15, "Couldn't login to MSP") do
     @page.new_account?
  end
end
