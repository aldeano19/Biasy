require "application_system_test_case"

class JournalistsTest < ApplicationSystemTestCase
  setup do
    @journalist = journalists(:one)
  end

  test "visiting the index" do
    visit journalists_url
    assert_selector "h1", text: "Journalists"
  end

  test "creating a Journalist" do
    visit journalists_url
    click_on "New Journalist"

    fill_in "First", with: @journalist.first
    fill_in "Last", with: @journalist.last
    click_on "Create Journalist"

    assert_text "Journalist was successfully created"
    click_on "Back"
  end

  test "updating a Journalist" do
    visit journalists_url
    click_on "Edit", match: :first

    fill_in "First", with: @journalist.first
    fill_in "Last", with: @journalist.last
    click_on "Update Journalist"

    assert_text "Journalist was successfully updated"
    click_on "Back"
  end

  test "destroying a Journalist" do
    visit journalists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Journalist was successfully destroyed"
  end
end
