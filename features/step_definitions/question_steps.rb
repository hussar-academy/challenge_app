When(/^I create a question$/) do
  visit new_question_path
  fill_in "Title", with: "A simple question"
  fill_in "Contents", with: "Long question description."
  click_button "Save"
end

Then(/^I should see this question on listing$/) do
  expect(page).to have_content "A simple question"
  expect(page).to have_content "by #{@user}"
end

Given(/^There is a question$/) do
  @question = create(:question)
end
