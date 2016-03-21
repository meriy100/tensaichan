class WantChildType < ActiveHash::Base
  self.data = [
    { id: 1, name: "なし" },
    { id: 2, name: "同居中" },
    { id: 3, name: "別居中" }
  ]
end
