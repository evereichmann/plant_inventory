require "application_system_test_case"

class OrderNotesTest < ApplicationSystemTestCase
  setup do
    @order_note = order_notes(:one)
  end

  test "visiting the index" do
    visit order_notes_url
    assert_selector "h1", text: "Order Notes"
  end

  test "creating a Order note" do
    visit order_notes_url
    click_on "New Order Note"

    fill_in "Information", with: @order_note.information
    fill_in "Order", with: @order_note.order_id
    click_on "Create Order note"

    assert_text "Order note was successfully created"
    click_on "Back"
  end

  test "updating a Order note" do
    visit order_notes_url
    click_on "Edit", match: :first

    fill_in "Information", with: @order_note.information
    fill_in "Order", with: @order_note.order_id
    click_on "Update Order note"

    assert_text "Order note was successfully updated"
    click_on "Back"
  end

  test "destroying a Order note" do
    visit order_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order note was successfully destroyed"
  end
end
