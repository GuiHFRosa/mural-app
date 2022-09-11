require "test_helper"

class MuralItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mural_item = mural_items(:one)
  end

  test "should get index" do
    get mural_items_url
    assert_response :success
  end

  test "should get new" do
    get new_mural_item_url
    assert_response :success
  end

  test "should create mural_item" do
    assert_difference("MuralItem.count") do
      post mural_items_url, params: { mural_item: { description: @mural_item.description, title: @mural_item.title } }
    end

    assert_redirected_to mural_item_url(MuralItem.last)
  end

  test "should show mural_item" do
    get mural_item_url(@mural_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_mural_item_url(@mural_item)
    assert_response :success
  end

  test "should update mural_item" do
    patch mural_item_url(@mural_item), params: { mural_item: { description: @mural_item.description, title: @mural_item.title } }
    assert_redirected_to mural_item_url(@mural_item)
  end

  test "should destroy mural_item" do
    assert_difference("MuralItem.count", -1) do
      delete mural_item_url(@mural_item)
    end

    assert_redirected_to mural_items_url
  end
end
