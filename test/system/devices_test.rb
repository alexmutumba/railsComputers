require "application_system_test_case"

class DevicesTest < ApplicationSystemTestCase
  setup do
    @device = devices(:one)
  end

  test "visiting the index" do
    visit devices_url
    assert_selector "h1", text: "Devices"
  end

  test "should create device" do
    visit devices_url
    click_on "New device"

    fill_in "Color", with: @device.color
    fill_in "Make", with: @device.make
    fill_in "Mode", with: @device.mode
    fill_in "Name", with: @device.name
    fill_in "Size", with: @device.size
    click_on "Create Device"

    assert_text "Device was successfully created"
    click_on "Back"
  end

  test "should update Device" do
    visit device_url(@device)
    click_on "Edit this device", match: :first

    fill_in "Color", with: @device.color
    fill_in "Make", with: @device.make
    fill_in "Mode", with: @device.mode
    fill_in "Name", with: @device.name
    fill_in "Size", with: @device.size
    click_on "Update Device"

    assert_text "Device was successfully updated"
    click_on "Back"
  end

  test "should destroy Device" do
    visit device_url(@device)
    click_on "Destroy this device", match: :first

    assert_text "Device was successfully destroyed"
  end
end
