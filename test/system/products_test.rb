require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end
  # test "visiting the index" do
  #   visit products_url
  #
  #   assert_selector "h1", text: "Product"
  # end

  test "lets a signed in user create a new product" do
    login_as users(:andre)
    visit "/products/new"
    fill_in "product_name", with: "Le Wagon Lisbon"
    fill_in "product_tagline", with: "Change Your Life Learn How To Code"
    click_on "Create a Product"

    #redirect to home page
    assert_equal root_path,page.current_path
    assert_text "Change Your Life Learn How To Code"
    end
  end

