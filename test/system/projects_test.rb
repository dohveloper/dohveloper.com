require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Category", with: @project.category
    fill_in "Challenge", with: @project.challenge
    fill_in "Comment", with: @project.comment
    fill_in "Order", with: @project.order
    fill_in "Outcome", with: @project.outcome
    fill_in "Solution", with: @project.solution
    fill_in "Summaryofchallenge", with: @project.summaryOfChallenge
    fill_in "Summaryofoutcome", with: @project.summaryOfOutcome
    fill_in "Summaryofsolution", with: @project.summaryOfSolution
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Category", with: @project.category
    fill_in "Challenge", with: @project.challenge
    fill_in "Comment", with: @project.comment
    fill_in "Order", with: @project.order
    fill_in "Outcome", with: @project.outcome
    fill_in "Solution", with: @project.solution
    fill_in "Summaryofchallenge", with: @project.summaryOfChallenge
    fill_in "Summaryofoutcome", with: @project.summaryOfOutcome
    fill_in "Summaryofsolution", with: @project.summaryOfSolution
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
