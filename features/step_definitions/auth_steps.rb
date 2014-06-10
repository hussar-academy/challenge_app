Given(/^I am user$/) do
  @user = create(:user)
  sign_in_as(@user)
end
