require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  setup do
    @flat = flats(:one)
  end

  test "visiting the index" do
    visit flats_url
    assert_selector "h1", text: "Flats"
  end

  test "should create flat" do
    visit flats_url
    click_on "New flat"

    fill_in "Address", with: @flat.address
    fill_in "Description", with: @flat.description
    fill_in "Image url", with: @flat.image_url
    fill_in "Name", with: @flat.name
    fill_in "Occupancy", with: @flat.occupancy
    fill_in "Price", with: @flat.price
    fill_in "User", with: @flat.user_id
    click_on "Create Flat"

    assert_text "Flat was successfully created"
    click_on "Back"
  end

  test "should update Flat" do
    visit flat_url(@flat)
    click_on "Edit this flat", match: :first

    fill_in "Address", with: @flat.address
    fill_in "Description", with: @flat.description
    fill_in "Image url", with: @flat.image_url
    fill_in "Name", with: @flat.name
    fill_in "Occupancy", with: @flat.occupancy
    fill_in "Price", with: @flat.price
    fill_in "User", with: @flat.user_id
    click_on "Update Flat"

    assert_text "Flat was successfully updated"
    click_on "Back"
  end

  test "should destroy Flat" do
    visit flat_url(@flat)
    click_on "Destroy this flat", match: :first

    assert_text "Flat was successfully destroyed"
  end
end
