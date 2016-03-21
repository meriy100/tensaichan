class MaritalHistory < ActiveHash::Base
  self.data = [
    { id: 1, name: "未婚" },
    { id: 2, name: "離婚" }
  ]
end
