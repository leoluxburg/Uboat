require "test_helper"

class ReceiptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receipt = receipts(:one)
  end

  test "should get index" do
    get receipts_url
    assert_response :success
  end

  test "should get new" do
    get new_receipt_url
    assert_response :success
  end

  test "should create receipt" do
    assert_difference("Receipt.count") do
      post receipts_url, params: { receipt: { cardholder_name: @receipt.cardholder_name, coupon_code: @receipt.coupon_code, credit_card_number: @receipt.credit_card_number, cvv_code: @receipt.cvv_code, email: @receipt.email, expiration_month: @receipt.expiration_month, expiration_year: @receipt.expiration_year, first_name: @receipt.first_name, gift_message: @receipt.gift_message, last_name: @receipt.last_name, order_id: @receipt.order_id, order_notes: @receipt.order_notes, phone: @receipt.phone, price: @receipt.price, product_name: @receipt.product_name, quantity: @receipt.quantity, shipping_address_line_1: @receipt.shipping_address_line_1, shipping_address_line_2: @receipt.shipping_address_line_2, shipping_city: @receipt.shipping_city, shipping_country: @receipt.shipping_country, shipping_method: @receipt.shipping_method, shipping_postal_code: @receipt.shipping_postal_code, shipping_state: @receipt.shipping_state, status: @receipt.status, subtotal: @receipt.subtotal, taxes: @receipt.taxes, total: @receipt.total, user_id: @receipt.user_id } }
    end

    assert_redirected_to receipt_url(Receipt.last)
  end

  test "should show receipt" do
    get receipt_url(@receipt)
    assert_response :success
  end

  test "should get edit" do
    get edit_receipt_url(@receipt)
    assert_response :success
  end

  test "should update receipt" do
    patch receipt_url(@receipt), params: { receipt: { cardholder_name: @receipt.cardholder_name, coupon_code: @receipt.coupon_code, credit_card_number: @receipt.credit_card_number, cvv_code: @receipt.cvv_code, email: @receipt.email, expiration_month: @receipt.expiration_month, expiration_year: @receipt.expiration_year, first_name: @receipt.first_name, gift_message: @receipt.gift_message, last_name: @receipt.last_name, order_id: @receipt.order_id, order_notes: @receipt.order_notes, phone: @receipt.phone, price: @receipt.price, product_name: @receipt.product_name, quantity: @receipt.quantity, shipping_address_line_1: @receipt.shipping_address_line_1, shipping_address_line_2: @receipt.shipping_address_line_2, shipping_city: @receipt.shipping_city, shipping_country: @receipt.shipping_country, shipping_method: @receipt.shipping_method, shipping_postal_code: @receipt.shipping_postal_code, shipping_state: @receipt.shipping_state, status: @receipt.status, subtotal: @receipt.subtotal, taxes: @receipt.taxes, total: @receipt.total, user_id: @receipt.user_id } }
    assert_redirected_to receipt_url(@receipt)
  end

  test "should destroy receipt" do
    assert_difference("Receipt.count", -1) do
      delete receipt_url(@receipt)
    end

    assert_redirected_to receipts_url
  end
end
