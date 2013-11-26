Given(/^I am on msp login page$/) do
  visit LoginPage
  end

When(/^I enter an invalid ? (.+)$/) do |name|
  on(LoginPage).user_email = name
end

When(/^I enter a blank password$/) do
  pending
end

When(/^I click login$/) do
  pending
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
