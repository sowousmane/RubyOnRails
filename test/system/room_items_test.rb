require "application_system_test_case"

class RoomItemsTest < ApplicationSystemTestCase
  setup do
    @room_item = room_items(:one)
  end

  test "visiting the index" do
    visit room_items_url
    assert_selector "h1", text: "Room Items"
  end

  test "creating a Room item" do
    visit room_items_url
    click_on "New Room Item"

    click_on "Create Room item"

    assert_text "Room item was successfully created"
    click_on "Back"
  end

  test "updating a Room item" do
    visit room_items_url
    click_on "Edit", match: :first

    click_on "Update Room item"

    assert_text "Room item was successfully updated"
    click_on "Back"
  end

  test "destroying a Room item" do
    visit room_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room item was successfully destroyed"
  end
end
