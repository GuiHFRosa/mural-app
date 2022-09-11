require "application_system_test_case"

class MuralItemsTest < ApplicationSystemTestCase
  setup do
    @mural_item = mural_items(:one)
  end

  test "visiting the index" do
    visit mural_items_url
    assert_selector "h1", text: "Mural items"
  end

  test "should create mural item" do
    visit mural_items_url
    click_on "New mural item"

    fill_in "Description", with: @mural_item.description
    fill_in "Title", with: @mural_item.title
    click_on "Create Mural item"

    assert_text "Mural item was successfully created"
    click_on "Back"
  end

  test "should update Mural item" do
    visit mural_item_url(@mural_item)
    click_on "Edit this mural item", match: :first

    fill_in "Description", with: @mural_item.description
    fill_in "Title", with: @mural_item.title
    click_on "Update Mural item"

    assert_text "Mural item was successfully updated"
    click_on "Back"
  end

  test "should destroy Mural item" do
    visit mural_item_url(@mural_item)
    click_on "Destroy this mural item", match: :first

    assert_text "Mural item was successfully destroyed"
  end
end
