Given /^I am not logged in$/ do
  visit '/logout'
end

Given /^I am on the homepage$/ do
  visit '/'
end

When /^I push the authenticate button$/ do
  click_link 'login'
end

Then /^I should see my name$/ do
  page.should have_content "joanmi"
end

