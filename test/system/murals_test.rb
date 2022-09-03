require "application_system_test_case"

class MuralsTest < ApplicationSystemTestCase
  setup do
    @mural = murals(:one)
  end

  test "visiting the index" do
    visit murals_url
    assert_selector "h1", text: "Murals"
  end

  test "should create mural" do
    visit murals_url
    click_on "New mural"

    fill_in "Description", with: @mural.description
    fill_in "Name", with: @mural.name
    fill_in "Title", with: @mural.title
    click_on "Create Mural"

    assert_text "Mural was successfully created"
    click_on "Back"
  end

  test "should update Mural" do
    visit mural_url(@mural)
    click_on "Edit this mural", match: :first

    fill_in "Description", with: @mural.description
    fill_in "Name", with: @mural.name
    fill_in "Title", with: @mural.title
    click_on "Update Mural"

    assert_text "Mural was successfully updated"
    click_on "Back"
  end

  test "should destroy Mural" do
    visit mural_url(@mural)
    click_on "Destroy this mural", match: :first

    assert_text "Mural was successfully destroyed"
  end
end
