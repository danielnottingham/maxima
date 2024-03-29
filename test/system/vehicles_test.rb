require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "creating a Vehicle" do
    visit vehicles_url
    click_on "New Vehicle"

    fill_in "Board", with: @vehicle.board
    fill_in "Driver", with: @vehicle.driver
    fill_in "Entry", with: @vehicle.entry
    fill_in "Exit", with: @vehicle.exit
    fill_in "Obs", with: @vehicle.obs
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle" do
    visit vehicles_url
    click_on "Edit", match: :first

    fill_in "Board", with: @vehicle.board
    fill_in "Driver", with: @vehicle.driver
    fill_in "Entry", with: @vehicle.entry
    fill_in "Exit", with: @vehicle.exit
    fill_in "Obs", with: @vehicle.obs
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle" do
    visit vehicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle was successfully destroyed"
  end
end
