json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :id, :user_id, :age, :prefecture_id, :gender_id, :job_id, :height, :weight, :deleted_at
  json.url user_profile_url(user_profile, format: :json)
end
