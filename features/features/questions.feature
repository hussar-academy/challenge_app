Feature: Questions
  In order to add questions
  I need to create a profile first
  Then I can add and edit my own questions
  And I can accept answers to my questions

  Background:
    Given I am user

  Scenario: Creating questions
     When I create a question
     Then I should see this question

  Scenario: Creating questions with empty title
     When I create a question with empty title
     Then I should not see this question
      And I should see the error message

  Scenario: Editing question
    Given There is a question created by another user
     Then I do not see "Edit" link on this question's page

  Scenario: Delete question
    Given There is a question created by another user
     Then I do not see "Delete" link on this question's page
