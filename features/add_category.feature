
Feature: Add category
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add manage categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add category
    Given I am on the admin categories page
    When I fill in "category_name" with "FoobarCat"
    And I fill in "category_keywords" with "foo"
    And I fill in "category_description" with "Lorem Ipsum Descriptio"
    And I press "Save"
    Then I should be on admin categories new page
    And I should see "Category was successfully saved."
    Given I am on the categories page
    And I should see "FoobarCat"
