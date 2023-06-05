class Search < ApplicationRecord
   def search_product
        products = Product.all
        products = Product.where(['categoria LIKE ?', "%#{category}%"]) if category.present?
        return products
    end
end
