Feature: Shoot

Background:
  Given a board with dimensions "5" x "5"
  And a large ship in position: "3:3" "3:4"

Scenario: Shoot and miss
  Given I shoot to position "3:5"
  Then I get water

Scenario: Shoot and sink
  Given I shoot to position "3:4"
  Then I get hit
  And I shoot to position "3:3"
  Then I get sink

Scenario: Shoot and hit
  Given I shoot to position "3:3"
  Then I get hit




 