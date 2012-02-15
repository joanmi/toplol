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
  @champion = Champion.create(:name => champion_name)
end

Then /^I should see an error$/ do
  page.should have_content "Champion already exist"
end
Given /^I go to edit champion page$/ do
  visit "/champions/#{@champion.id}/edit"
end

When /^I edit "([^"]*)" name$/ do |champion_name|
  fill_in "Name", :with => champion_name
end

Then /^I should see champions name "([^"]*)" updated$/ do |champion_name|
  page.should have_content champion_name
end

When /^I edit a champion called "([^"]*)" and called "([^"]*)"$/ do |arg1, arg2|
end

