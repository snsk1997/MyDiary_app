class DiariesController < ApplicationController
  def index
    @diary = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.create(diary_params)
    if @diary.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @diary = Diary.find(params[:id])
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
    if @diary.update(diary_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:title, :content, :record_day, :weather_id).merge(user_id: current_user.id)
  end
end
