(1..50).each do |i|
  User.seed do |s|
    s.id = i
    s.name = "dummy_user#{i}"
    s.image = 'dummy_user.png'
    s.email = "test#{i}@email.com"
  end
end
