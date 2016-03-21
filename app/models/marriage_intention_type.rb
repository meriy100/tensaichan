class MarriageIntentionType < ActiveHash::Base
  self.data = [
    { id: 1, name: 'すぐにでもしたい' },
    { id: 2, name: '2~3年のうちにしたい' },
    { id: 3, name: 'いい人がいればしたい' },
    { id: 4, name: '今のとこと結婚は考えてない' },
    { id: 5, name: 'わからない' },
  ]
end
