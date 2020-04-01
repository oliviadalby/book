require 'test_helper'

class BookSitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_site = book_sites(:one)
  end

  test "should get index" do
    get book_sites_url
    assert_response :success
  end

  test "should get new" do
    get new_book_site_url
    assert_response :success
  end

  test "should create book_site" do
    assert_difference('BookSite.count') do
      post book_sites_url, params: { book_site: { page_count: @book_site.page_count, rating: @book_site.rating, title: @book_site.title } }
    end

    assert_redirected_to book_site_url(BookSite.last)
  end

  test "should show book_site" do
    get book_site_url(@book_site)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_site_url(@book_site)
    assert_response :success
  end

  test "should update book_site" do
    patch book_site_url(@book_site), params: { book_site: { page_count: @book_site.page_count, rating: @book_site.rating, title: @book_site.title } }
    assert_redirected_to book_site_url(@book_site)
  end

  test "should destroy book_site" do
    assert_difference('BookSite.count', -1) do
      delete book_site_url(@book_site)
    end

    assert_redirected_to book_sites_url
  end
end
