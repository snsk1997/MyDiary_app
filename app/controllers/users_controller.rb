class UsersController < ApplicationController
  def index 
    redirect_to new_user_registration_path
  end

  def show
    user = User.find(params[:id])
    @diary = user.diaries
    @diary_count = user.diaries.count
  end

  def search
    @diary = Diary.search(params[:keyword])
  end
end
