class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @diary = user.diaries
    @diary_count = user.diaries.count
  end

  def search
    @diary = Diary.search(params[:keyword])
  end
end
