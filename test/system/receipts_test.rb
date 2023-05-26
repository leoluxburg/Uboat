require "application_system_test_case"

class ReceiptsTest < ApplicationSystemTestCase
  setup do
    @receipt = receipts(:one)
  end

  test "visiting the index" do
    visit receipts_url
    assert_selector "h1", text: "Receipts"
  end

  test "should create receipt" do
    visit receipts_url
    click_on "New receipt"

    fill_in "Cardholder name", with: @receipt.cardholder_name
    fill_in "Coupon code", with: @receipt.coupon_code
    fill_in "Credit card number", with: @receipt.credit_card_number
    fill_in "Cvv code", with: @receipt.cvv_code
    fill_in "Email", with: @receipt.email
    fill_in "Expiration month", with: @receipt.expiration_month
    fill_in "Expiration year", with: @receipt.expiration_year
    fill_in "First name", with: @receipt.first_name
    fill_in "Gift message", with: @receipt.gift_message
    fill_in "Last name", with: @receipt.last_name
    fill_in "Order", with: @receipt.order_id
    fill_in "Order notes", with: @receipt.order_notes
    fill_in "Phone", with: @receipt.phone
    fill_in "Price", with: @receipt.price
    fill_in "Product name", with: @receipt.product_name
    fill_in "Quantity", with: @receipt.quantity
    fill_in "Shipping address line 1", with: @receipt.shipping_address_line_1
    fill_in "Shipping address line 2", with: @receipt.shipping_address_line_2
    fill_in "Shipping city", with: @receipt.shipping_city
    fill_in "Shipping country", with: @receipt.shipping_country
    fill_in "Shipping method", with: @receipt.shipping_method
    fill_in "Shipping postal code", with: @receipt.shipping_postal_code
    fill_in "Shipping state", with: @receipt.shipping_state
    fill_in "Status", with: @receipt.status
    fill_in "Subtotal", with: @receipt.subtotal
    fill_in "Taxes", with: @receipt.taxes
    fill_in "Total", with: @receipt.total
    fill_in "User", with: @receipt.user_id
    click_on "Create Receipt"

    assert_text "Receipt was successfully created"
    click_on "Back"
  end

  test "should update Receipt" do
    visit receipt_url(@receipt)
    click_on "Edit this receipt", match: :first

    fill_in "Cardholder name", with: @receipt.cardholder_name
    fill_in "Coupon code", with: @receipt.coupon_code
    fill_in "Credit card number", with: @receipt.credit_card_number
    fill_in "Cvv code", with: @receipt.cvv_code
    fill_in "Email", with: @receipt.email
    fill_in "Expiration month", with: @receipt.expiration_month
    fill_in "Expiration year", with: @receipt.expiration_year
    fill_in "First name", with: @receipt.first_name
    fill_in "Gift message", with: @receipt.gift_message
    fill_in "Last name", with: @receipt.last_name
    fill_in "Order", with: @receipt.order_id
    fill_in "Order notes", with: @receipt.order_notes
    fill_in "Phone", with: @receipt.phone
    fill_in "Price", with: @receipt.price
    fill_in "Product name", with: @receipt.product_name
    fill_in "Quantity", with: @receipt.quantity
    fill_in "Shipping address line 1", with: @receipt.shipping_address_line_1
    fill_in "Shipping address line 2", with: @receipt.shipping_address_line_2
    fill_in "Shipping city", with: @receipt.shipping_city
    fill_in "Shipping country", with: @receipt.shipping_country
    fill_in "Shipping method", with: @receipt.shipping_method
    fill_in "Shipping postal code", with: @receipt.shipping_postal_code
    fill_in "Shipping state", with: @receipt.shipping_state
    fill_in "Status", with: @receipt.status
    fill_in "Subtotal", with: @receipt.subtotal
    fill_in "Taxes", with: @receipt.taxes
    fill_in "Total", with: @receipt.total
    fill_in "User", with: @receipt.user_id
    click_on "Update Receipt"

    assert_text "Receipt was successfully updated"
    click_on "Back"
  end

  test "should destroy Receipt" do
    visit receipt_url(@receipt)
    click_on "Destroy this receipt", match: :first

    assert_text "Receipt was successfully destroyed"
  end
end
