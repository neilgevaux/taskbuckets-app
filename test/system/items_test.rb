require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Bucket", with: @item.bucket_id
    fill_in "Bucket name", with: @item.bucket_name
    fill_in "Date added", with: @item.date_added
    fill_in "Deadline", with: @item.deadline
    check "Task completed" if @item.task_completed
    fill_in "Task description", with: @item.task_description
    fill_in "Task", with: @item.task_id
    fill_in "Task name", with: @item.task_name
    fill_in "User", with: @item.user_id
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Bucket", with: @item.bucket_id
    fill_in "Bucket name", with: @item.bucket_name
    fill_in "Date added", with: @item.date_added
    fill_in "Deadline", with: @item.deadline
    check "Task completed" if @item.task_completed
    fill_in "Task description", with: @item.task_description
    fill_in "Task", with: @item.task_id
    fill_in "Task name", with: @item.task_name
    fill_in "User", with: @item.user_id
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end
