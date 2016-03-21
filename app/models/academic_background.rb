class AcademicBackground < ActiveHash::Base
  self.data = [
    { id: 1, name: "短大 専門学校卒" },
    { id: 2, name: "高校卒" },
    { id: 3, name: "大学卒" },
    { id: 4, name: "大学院卒" },
    { id: 5, name: "その他" }
  ]
end
