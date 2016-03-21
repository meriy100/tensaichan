class HomeworkType < ActiveHash::Base
  self.data = [
    { id: 1, name: "積極的に参加したい" },
    { id: 2, name: "できれば参加したい" },
    { id: 3, name: "できれば相手にまかせたい" },
    { id: 4, name: "相手にまかせたい" },
  ]
end
