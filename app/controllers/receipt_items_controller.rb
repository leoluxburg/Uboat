class ReceiptItemsController < ApplicationController
   def create
        @receipt_item = @receipt.receipt_items.new(receipt_params)
        authorize @receipt_item
        @receipt.save
        session[:receipt_id] = @receipt.id
        redirect_to baskets_path
    end

    private

    def receipt_params
        params.require(:receipt_item).permit(:product_id, :quantity, :receipt_id)
    end
end
