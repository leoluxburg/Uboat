class ReceiptMailer < ApplicationMailer
   def new_receipt_email
    @receipt = params[:receipt]
    mail(to: [@receipt.user.email, @receipt.receipt_items.first.product.user.email, 'uboatpty@gmail.com'], subject: "Uboat | You got a new order!")
  end
end
