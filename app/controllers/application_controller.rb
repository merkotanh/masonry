class ApplicationController < ActionController::Base
  before_action :get_category_nav

  private
    def get_category_nav
      @images = Pin.all
    end

end
