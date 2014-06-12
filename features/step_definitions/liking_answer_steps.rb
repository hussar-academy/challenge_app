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
