require "test_helper"

class MuralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mural = murals(:one)
  end

  test "should get index" do
    get murals_url
    assert_response :success
  end

  test "should get new" do
    get new_mural_url
    assert_response :success
  end

  test "should create mural" do
    assert_difference("Mural.count") do
      post murals_url, params: { mural: { description: @mural.description, name: @mural.name, title: @mural.title } }
    end

    assert_redirected_to mural_url(Mural.last)
  end

  test "should show mural" do
    get mural_url(@mural)
    assert_response :success
  end

  test "should get edit" do
    get edit_mural_url(@mural)
    assert_response :success
  end

  test "should update mural" do
    patch mural_url(@mural), params: { mural: { description: @mural.description, name: @mural.name, title: @mural.title } }
    assert_redirected_to mural_url(@mural)
  end

  test "should destroy mural" do
    assert_difference("Mural.count", -1) do
      delete mural_url(@mural)
    end

    assert_redirected_to murals_url
  end
end
