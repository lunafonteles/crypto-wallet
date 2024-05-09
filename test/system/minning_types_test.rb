require "application_system_test_case"

class MinningTypesTest < ApplicationSystemTestCase
  setup do
    @minning_type = minning_types(:one)
  end

  test "visiting the index" do
    visit minning_types_url
    assert_selector "h1", text: "Minning types"
  end

  test "should create minning type" do
    visit minning_types_url
    click_on "New minning type"

    fill_in "Acronym", with: @minning_type.acronym
    fill_in "Description", with: @minning_type.description
    click_on "Create Minning type"

    assert_text "Minning type was successfully created"
    click_on "Back"
  end

  test "should update Minning type" do
    visit minning_type_url(@minning_type)
    click_on "Edit this minning type", match: :first

    fill_in "Acronym", with: @minning_type.acronym
    fill_in "Description", with: @minning_type.description
    click_on "Update Minning type"

    assert_text "Minning type was successfully updated"
    click_on "Back"
  end

  test "should destroy Minning type" do
    visit minning_type_url(@minning_type)
    click_on "Destroy this minning type", match: :first

    assert_text "Minning type was successfully destroyed"
  end
end
