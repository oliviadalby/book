require "application_system_test_case"

class BookSitesTest < ApplicationSystemTestCase
  setup do
    @book_site = book_sites(:one)
  end

  test "visiting the index" do
    visit book_sites_url
    assert_selector "h1", text: "Book Sites"
  end

  test "creating a Book site" do
    visit book_sites_url
    click_on "New Book Site"

    fill_in "Page count", with: @book_site.page_count
    fill_in "Rating", with: @book_site.rating
    fill_in "Title", with: @book_site.title
    click_on "Create Book site"

    assert_text "Book site was successfully created"
    click_on "Back"
  end

  test "updating a Book site" do
    visit book_sites_url
    click_on "Edit", match: :first

    fill_in "Page count", with: @book_site.page_count
    fill_in "Rating", with: @book_site.rating
    fill_in "Title", with: @book_site.title
    click_on "Update Book site"

    assert_text "Book site was successfully updated"
    click_on "Back"
  end

  test "destroying a Book site" do
    visit book_sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book site was successfully destroyed"
  end
end
