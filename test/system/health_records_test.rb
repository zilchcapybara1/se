require "application_system_test_case"

class HealthRecordsTest < ApplicationSystemTestCase
  setup do
    @health_record = health_records(:one)
  end

  test "visiting the index" do
    visit health_records_url
    assert_selector "h1", text: "Health Records"
  end

  test "creating a Health record" do
    visit health_records_url
    click_on "New Health Record"

    fill_in "Birthday", with: @health_record.birthday
    fill_in "Diagnosis", with: @health_record.diagnosis
    fill_in "History", with: @health_record.history
    fill_in "Name", with: @health_record.name
    fill_in "Recorded by", with: @health_record.recorded_by
    click_on "Create Health record"

    assert_text "Health record was successfully created"
    click_on "Back"
  end

  test "updating a Health record" do
    visit health_records_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @health_record.birthday
    fill_in "Diagnosis", with: @health_record.diagnosis
    fill_in "History", with: @health_record.history
    fill_in "Name", with: @health_record.name
    fill_in "Recorded by", with: @health_record.recorded_by
    click_on "Update Health record"

    assert_text "Health record was successfully updated"
    click_on "Back"
  end

  test "destroying a Health record" do
    visit health_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health record was successfully destroyed"
  end
end
