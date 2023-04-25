class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :locations, :aboutus, :contact ]

  def home
  end

   def dashboard
    @user = current_user
  end

  def locations

  end

  def aboutus
  end

  def contact
  end
end
