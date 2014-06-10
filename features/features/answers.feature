Feature: Answering questions
  In order to answer questions
  I need to create a profile first

  Background:
    Given I am user
      And There is a question

  Scenario: Answering question
     When I answer this question
     Then I should see the answer on question's page

  Scenario: Adding empty answer
     When I answer this question with empty contents
     Then I should not see the answer on question's page
      And I should see the error message

