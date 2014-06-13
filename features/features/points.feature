Feature: Points
  User are awarded points for certain actions
  And use the points to create questions.
  When they accumulate certain amount of points
  Then they are awarded badges that are visible in their profiles.

  User receives 100 free points upon registration.
  Creating a question costs 10 points.
  When user's answer is likes she receives 5 points.
  When user's answer is accepted she receives 25 points.

  If user does not have enough points, she can't create a question.

  When user accumulate 1000 points she receives a "Superstar" badge.
  Badges are awarded indifinitely and do not disappear even when user loses his points.

  Background:
    Given I am user
      And I have 100 points

  Scenario: Creating question
     When I create a question
     Then I should have 90 points

  Scenario: Having answer liked
    Given I added an answer
     When This answer is liked
     Then I should have 105 points

  Scenario: Having answer accepted
    Given I added an answer
     When This answer is accepted
     Then I should have 125 points
