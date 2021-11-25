require "application_system_test_case"

class BuyheresTest < ApplicationSystemTestCase
  setup do
    @buyhere = buyheres(:one)
  end

  test "visiting the index" do
    visit buyheres_url
    assert_selector "h1", text: "Buyheres"
  end

  test "creating a Buyhere" do
    visit buyheres_url
    click_on "New Buyhere"

    click_on "Create Buyhere"

    assert_text "Buyhere was successfully created"
    click_on "Back"
  end

  test "updating a Buyhere" do
    visit buyheres_url
    click_on "Edit", match: :first

    click_on "Update Buyhere"

    assert_text "Buyhere was successfully updated"
    click_on "Back"
  end

  test "destroying a Buyhere" do
    visit buyheres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buyhere was successfully destroyed"
  end
end
