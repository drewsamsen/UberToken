Given /^there is a project called "(.*?)"$/ do |name|
  Factory(:project, :name => name)
end

Given /^there is a user called "(.*?)"$/ do |name|
  Factory(:user, :name => name)
end