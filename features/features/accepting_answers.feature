Feature:
  When someone adds a correct answer to my question
  I want to accept this answer to thank the author

  Once an answer is accepted
  Users can't add new answers to the question

  Only author of the question can accept answers

  Background:
    Given I am user

  Scenario: Accepting answers
    Given I created a question
      And There is answer to that question
     When I accept that answer
     Then That answer should be marked as accepted
      And It should not be possible to add more answers
