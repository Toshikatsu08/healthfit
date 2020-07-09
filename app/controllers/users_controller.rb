class UsersController < ApplicationController
  def index
    @chart = [['7月9日', 70], ['7月10日', 75], ['7月11日', 80],['7月12日', 65]]
  end
end
