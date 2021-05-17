require "application_system_test_case"

class FlateratesTest < ApplicationSystemTestCase
  setup do
    @flaterate = flaterates(:one)
  end

  test "visiting the index" do
    visit flaterates_url
    assert_selector "h1", text: "Flaterates"
  end

  test "creating a Flaterate" do
    visit flaterates_url
    click_on "New Flaterate"

    fill_in "Date", with: @flaterate.date
    fill_in "Hrs", with: @flaterate.hrs
    fill_in "Ro num", with: @flaterate.ro_num
    fill_in "Work", with: @flaterate.work
    fill_in "Year make model", with: @flaterate.year_make_model
    click_on "Create Flaterate"

    assert_text "Flaterate was successfully created"
    click_on "Back"
  end

  test "updating a Flaterate" do
    visit flaterates_url
    click_on "Edit", match: :first

    fill_in "Date", with: @flaterate.date
    fill_in "Hrs", with: @flaterate.hrs
    fill_in "Ro num", with: @flaterate.ro_num
    fill_in "Work", with: @flaterate.work
    fill_in "Year make model", with: @flaterate.year_make_model
    click_on "Update Flaterate"

    assert_text "Flaterate was successfully updated"
    click_on "Back"
  end

  test "destroying a Flaterate" do
    visit flaterates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flaterate was successfully destroyed"
  end
end
