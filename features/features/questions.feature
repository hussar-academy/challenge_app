Feature: Questions
  In order to add questions
  I need to create a profile first

  Background:
    Given I am user

  Scenario: Creating questions
     When I create a question
     Then I should see this question on listing

