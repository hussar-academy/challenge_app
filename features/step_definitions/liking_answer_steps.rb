And(/^I like that answer$/) do
  visit question_path(@answer.question)
  within "answer-#{@answer.id}" do
    click_on "Like"
  end
end

Then(/^That answer should have (\d+) like(s?)$/) do |count, suffix|
  within "answer-#{@answer.id}" do
    expect(page).to have_content("#{count} like#{suffix}")
  end
end

When(/^This answer is liked$/) do
  sign_in_as(@answer.question.author)
  visit question_path(@answer.question)
  within "answer-#{@answer.id}" do
    click_on "Like"
  end

  expect(@user.reload.points).to be(105)
end

When(/^This answer is accepted$/) do
  sign_in_as(@answer.question.author)
  visit question_path(@answer.question)
  within "answer-#{@answer.id}" do
    click_on "Accept"
  end

  expect(@user.reload.points).to be(125)
end
