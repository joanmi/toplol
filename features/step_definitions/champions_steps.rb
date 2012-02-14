When /^I go to champions page$/ do
  visit '/champions'
end

When /^I create a new champion called "([^"]*)"$/ do |champion_name|
  click_link "Add new champion"
  fill_in "Name", :with => champion_name
  click_button "Create"
end

Then /^I should see "([^"]*)" on champions list$/ do |champion_name|
  page.should have_content champion_name
end

Given /^I have champion "([^"]*)" created$/ do |champion_name|
  Champion.create(:name => champion_name)
end

Then /^I should see an error$/ do
  save_and_open_page
  page.should have_content "Champion already exist"
end

