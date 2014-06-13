When(/^I accept that answer$/) do
  visit question_path(@answer.question)
  within "#answer-#{@answer.id}" do
    click_on "Accept"
  end
end

Then(/^That answer should be marked as accepted$/) do
  within "#answer-#{@answer.id}" do
    expect(page).to have_content("Accepted")
  end
end

Then(/^It should not be possible to add more answers$/) do
  visit question_path(@answer.question)
  expect(page).not_to have_content("Add answer")
end

