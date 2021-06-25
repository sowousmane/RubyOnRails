require "test_helper"

class RoomItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_item = room_items(:one)
  end

  test "should get index" do
    get room_items_url
    assert_response :success
  end

  test "should get new" do
    get new_room_item_url
    assert_response :success
  end

  test "should create room_item" do
    assert_difference('RoomItem.count') do
      post room_items_url, params: { room_item: {  } }
    end

    assert_redirected_to room_item_url(RoomItem.last)
  end

  test "should show room_item" do
    get room_item_url(@room_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_item_url(@room_item)
    assert_response :success
  end

  test "should update room_item" do
    patch room_item_url(@room_item), params: { room_item: {  } }
    assert_redirected_to room_item_url(@room_item)
  end

  test "should destroy room_item" do
    assert_difference('RoomItem.count', -1) do
      delete room_item_url(@room_item)
    end

    assert_redirected_to room_items_url
  end
end
