And(/^I should see the error message$/) do
  expect(page).to have_content("error")
end

