class Drink < ActiveHash::Base
  self.data = [
    { id: 1, name: "飲まない" },
    { id: 2, name: "飲む" },
    { id: 3, name: "ときどき飲む" }
  ]
end
