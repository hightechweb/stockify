class WelcomeController < ApplicationController
  before_action :authenticate_user!, except: [:index] #DT Show index page if not logged-in

  def index

  end
end
