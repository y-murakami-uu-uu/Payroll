require "application_system_test_case"

class Payroll1sTest < ApplicationSystemTestCase
  setup do
    @payroll1 = payroll1s(:one)
  end

  test "visiting the index" do
    visit payroll1s_url
    assert_selector "h1", text: "Payroll1s"
  end

  test "creating a Payroll1" do
    visit payroll1s_url
    click_on "New Payroll1"

    click_on "Create Payroll1"

    assert_text "Payroll1 was successfully created"
    click_on "Back"
  end

  test "updating a Payroll1" do
    visit payroll1s_url
    click_on "Edit", match: :first

    click_on "Update Payroll1"

    assert_text "Payroll1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Payroll1" do
    visit payroll1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payroll1 was successfully destroyed"
  end
end
