class Search < ApplicationRecord
   def search_product
        products = Product.all
        products = Product.where(['categoria LIKE ?', "%#{category}%"]) if category.present?
        products = Product.where(['subcategoria LIKE ?', "%#{subcategory}%"]) if subcategory.present?
        products = Product.where(['provincia LIKE ?', "%#{province}%"]) if province.present?
        products = Product.where(['distrito LIKE ?', "%#{district}%"]) if district.present?
        products = Product.where(['precio <= ?', budget]) if budget.present?
        products = Product.where(['marina  LIKE ?', "%#{bay}%"]) if bay.present?

        return products
    end
end
