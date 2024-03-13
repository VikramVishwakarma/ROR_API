require "application_system_test_case"

class DetailsTest < ApplicationSystemTestCase
  setup do
    @detail = details(:one)
  end

  test "visiting the index" do
    visit details_url
    assert_selector "h1", text: "Details"
  end

  test "should create detail" do
    visit details_url
    click_on "New detail"

    fill_in "Created on", with: @detail.created_on
    fill_in "Director", with: @detail.director
    fill_in "Genres", with: @detail.genres
    fill_in "Main actor", with: @detail.main_actor
    fill_in "Name", with: @detail.name
    fill_in "Release date", with: @detail.release_date
    fill_in "Updated on", with: @detail.updated_on
    click_on "Create Detail"

    assert_text "Detail was successfully created"
    click_on "Back"
  end

  test "should update Detail" do
    visit detail_url(@detail)
    click_on "Edit this detail", match: :first

    fill_in "Created on", with: @detail.created_on
    fill_in "Director", with: @detail.director
    fill_in "Genres", with: @detail.genres
    fill_in "Main actor", with: @detail.main_actor
    fill_in "Name", with: @detail.name
    fill_in "Release date", with: @detail.release_date
    fill_in "Updated on", with: @detail.updated_on
    click_on "Update Detail"

    assert_text "Detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Detail" do
    visit detail_url(@detail)
    click_on "Destroy this detail", match: :first

    assert_text "Detail was successfully destroyed"
  end
end
