class Smoking < ActiveHash::Base
  self.data = [
    { id: 1, name: "吸う" },
    { id: 2, name: "ときどき吸う" },
    { id: 3, name: "相手が嫌ならやめる" },
    { id: 4, name: "吸わない" }
  ]
end
