require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "should create profile" do
    visit profiles_url
    click_on "New profile"

    check "Experiencia" if @profile.experiencia
    fill_in "Fecha de nacimiento", with: @profile.fecha_de_nacimiento
    fill_in "Nacionalidad", with: @profile.nacionalidad
    fill_in "Nombre completo", with: @profile.nombre_completo
    fill_in "Nombre emergencia", with: @profile.nombre_emergencia
    fill_in "Telefono", with: @profile.telefono
    fill_in "Telefono emergencia", with: @profile.telefono_emergencia
    fill_in "User", with: @profile.user_id
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "should update Profile" do
    visit profile_url(@profile)
    click_on "Edit this profile", match: :first

    check "Experiencia" if @profile.experiencia
    fill_in "Fecha de nacimiento", with: @profile.fecha_de_nacimiento
    fill_in "Nacionalidad", with: @profile.nacionalidad
    fill_in "Nombre completo", with: @profile.nombre_completo
    fill_in "Nombre emergencia", with: @profile.nombre_emergencia
    fill_in "Telefono", with: @profile.telefono
    fill_in "Telefono emergencia", with: @profile.telefono_emergencia
    fill_in "User", with: @profile.user_id
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Profile" do
    visit profile_url(@profile)
    click_on "Destroy this profile", match: :first

    assert_text "Profile was successfully destroyed"
  end
end
