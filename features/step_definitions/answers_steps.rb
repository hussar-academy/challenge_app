When(/^I answer this question$/) do
  visit question_path(@question)
  fill_in "Contents", with: "This is the answer."
  click_button "Save"
end

When(/^I answer this question with empty contents$/) do
  visit question_path(@question)
  fill_in "Contents", with: ""
  click_button "Save"
end

Then(/^I should see the answer on question's page$/) do
  expect(page).to have_content("This is the answer")
  expect(page).to have_content("by #{@user}")
end

Then(/^I should not see the answer on question's page$/) do
  expect(page).not_to have_content("This is the answer")
  expect(page).not_to have_content("by #{@user}")
end

