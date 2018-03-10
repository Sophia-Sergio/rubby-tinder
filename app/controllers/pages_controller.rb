# pages contoller
class PagesController < ApplicationController
  def home() end

  def search
    @user = User.where.not(id: current_user.id).sample
  end
end
