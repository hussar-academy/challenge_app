Then(/^I should have (\d+) points$/) do |points|
  expect(@user.reload.points).to be(100)
end

Given(/^I have (\d+) points$/) do |points|
  @user.points = points
  @user.save!
end

