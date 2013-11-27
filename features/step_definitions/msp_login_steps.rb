Given(/^I am on msp login page$/) do
  visit LoginPage
  end

When(/^I enter an invalid name: (.+)$/) do |name|
  on(LoginPage).user_email = name
end

When(/^I enter a blank password$/) do
  on(LoginPage).user_password = nil
end

When(/^I click login$/) do
  on(LoginPage).login_button_element.click
  wait
end

When(/^I enter an invalid password$/) do
  pending
end

When(/^I enter a blank name$/) do
  pending
end

When(/^I enter an valid password$/) do
  pending
end

When(/^I enter a valid name$/) do
  pending
end

When(/^I enter a valid password$/) do
  pending
end

Then(/^I should see the error message (.+)$/) do |message|
  on(LoginPage).error_element.text.should include message #.should be_true
  #@current_page.text.should include message
end


def wait
  sleep 1
end