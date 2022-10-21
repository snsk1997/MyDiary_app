require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '日記の投稿' do
    context '日記が投稿できる場合' do
      it '全て記入していれば投稿できる' do
        expect(@diary).to be_valid
      end
      it '画像がなくても投稿できる' do
        @diary.images = nil
        expect(@diary).to be_valid
      end
    end
    context '日記が投稿できない場合' do
      it '日付が空白だと投稿できない' do
        @diary.record_day = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Record day can't be blank")
      end
      it '天気が空白だと投稿できない' do
        @diary.weather_id = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Weather can't be blank")
      end
      it 'タイトルが空白だと投稿できない' do
        @diary.title = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Title can't be blank")
      end
      it '内容が空白だと投稿できない' do
        @diary.content = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Content can't be blank")
      end
    end
  end
end
