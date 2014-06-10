When(/^I accept that answer$/) do
  visit question_path(@answer.question)
  click_on "Accept"
end

Then(/^That answer should be marked as accepted$/) do
  expect(page).to have_content("Accepted")
end
