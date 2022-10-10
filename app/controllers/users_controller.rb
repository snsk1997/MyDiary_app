class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @diary = user.diaries
    @diary_count = user.diaries.count
  end
end
