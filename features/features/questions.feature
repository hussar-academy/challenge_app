Feature: Questions
  In order to add questions
  I need to create a profile first

  Background:
    Given I am user

  Scenario: Creating questions
     When I create a question
     Then I should see this question

  Scenario: Creating questions with empty title
     When I create a question with empty title
     Then I should not see this question
      And I should see the error message
