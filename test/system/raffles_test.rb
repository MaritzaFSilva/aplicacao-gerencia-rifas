require "application_system_test_case"

class RafflesTest < ApplicationSystemTestCase
  setup do
    @raffle = raffles(:one)
  end

  test "visiting the index" do
    visit raffles_url
    assert_selector "h1", text: "Raffles"
  end

  test "creating a Raffle" do
    visit raffles_url
    click_on "New Raffle"

    fill_in "Description", with: @raffle.description
    fill_in "Draw date", with: @raffle.draw_date
    fill_in "Probable draw date", with: @raffle.probable_draw_date
    fill_in "Sale end date", with: @raffle.sale_end_date
    fill_in "Sale start date", with: @raffle.sale_start_date
    fill_in "Ticket value", with: @raffle.ticket_value
    fill_in "Title", with: @raffle.title
    fill_in "Type id", with: @raffle.type_id_id
    fill_in "User id", with: @raffle.user_id_id
    click_on "Create Raffle"

    assert_text "Raffle was successfully created"
    click_on "Back"
  end

  test "updating a Raffle" do
    visit raffles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @raffle.description
    fill_in "Draw date", with: @raffle.draw_date
    fill_in "Probable draw date", with: @raffle.probable_draw_date
    fill_in "Sale end date", with: @raffle.sale_end_date
    fill_in "Sale start date", with: @raffle.sale_start_date
    fill_in "Ticket value", with: @raffle.ticket_value
    fill_in "Title", with: @raffle.title
    fill_in "Type id", with: @raffle.type_id_id
    fill_in "User id", with: @raffle.user_id_id
    click_on "Update Raffle"

    assert_text "Raffle was successfully updated"
    click_on "Back"
  end

  test "destroying a Raffle" do
    visit raffles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Raffle was successfully destroyed"
  end
end
