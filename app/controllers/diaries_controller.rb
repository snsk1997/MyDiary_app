class DiariesController < ApplicationController
  def index
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.create(diary_params)
    if @diary.save
      redirect_to user_path(current_user.id)
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
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    @diary = Diary.find(params[:id])
    if @diary.destroy
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def search
    @diary = Diary.search(params[:keyword])
    @diary_count = @diary.count
  end

  private

  def diary_params
    params.require(:diary).permit(:title, :content, :record_day, :weather_id, images: []).merge(user_id: current_user.id)
  end
end
