Feature: Merge Articles
  As a blog administrator
  If there are similar articles admin could merge them into one

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And two articles are present

  Scenario: Successfully write articles
    Given I am on articles admin page
#    Then show me the page
    When I follow "Edit"
    And I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should be on articles admin page
    And I should see "Hello World! Foo"
