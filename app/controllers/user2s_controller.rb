class User2sController < ApplicationController

  def home
    render json:  " Wello World"
  end
  def about
    render json: " This rails application is about badminton "
  end
end
