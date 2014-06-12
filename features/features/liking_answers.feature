Feature: Liking answers
  All users, including question's author, can like answers added by other users.
  This is a way of voting for the best answer to the question.
  It should be visible how many likes an answer has received.

  Background:
    Given I am user
      And There is a question with answer

  Scenario: Liking answer
     When I like that answer
     Then That answer should have 1 like

