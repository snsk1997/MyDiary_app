class Weather < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '晴天' },
    { id: 3, name: '晴れ' },
    { id: 4, name: '曇り' },
    { id: 5, name: '小雨' },
    { id: 6, name: '雨' },
    { id: 7, name: '大雨' },
    { id: 8, name: '雷' },
    { id: 9, name: '台風' }
  ]

  include ActiveHash::Associations
  has_many :diaries

end