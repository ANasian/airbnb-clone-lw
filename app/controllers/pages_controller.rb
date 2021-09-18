class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @flat = Flat.new
  end
end
