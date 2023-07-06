class ProductMailer < ApplicationMailer
   def new_product_email
    @product = params[:product]
    mail(to: ['uboatpty@gmail.com'], subject: "Uboat | New product register!")
  end
end
