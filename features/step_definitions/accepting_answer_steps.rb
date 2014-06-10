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
