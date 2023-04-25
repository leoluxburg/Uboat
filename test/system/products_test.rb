require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Categoria", with: @product.categoria
    fill_in "Corregimiento", with: @product.corregimiento
    fill_in "Descripcion", with: @product.descripcion
    fill_in "Distrito", with: @product.distrito
    fill_in "Marina", with: @product.marina
    fill_in "Precio", with: @product.precio
    fill_in "Provincia", with: @product.provincia
    fill_in "Sector", with: @product.sector
    fill_in "Subcategoria", with: @product.subcategoria
    fill_in "Titulo", with: @product.titulo
    fill_in "User", with: @product.user_id
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Categoria", with: @product.categoria
    fill_in "Corregimiento", with: @product.corregimiento
    fill_in "Descripcion", with: @product.descripcion
    fill_in "Distrito", with: @product.distrito
    fill_in "Marina", with: @product.marina
    fill_in "Precio", with: @product.precio
    fill_in "Provincia", with: @product.provincia
    fill_in "Sector", with: @product.sector
    fill_in "Subcategoria", with: @product.subcategoria
    fill_in "Titulo", with: @product.titulo
    fill_in "User", with: @product.user_id
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
