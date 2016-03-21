require 'rails_helper'

RSpec.describe "user_profiles/edit", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      :user_id => 1,
      :age => 1,
      :prefecture_id => 1,
      :gender_id => 1,
      :job_id => 1,
      :height => 1,
      :weight => 1
    ))
  end

  it "renders the edit user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profile_path(@user_profile), "post" do

      assert_select "input#user_profile_user_id[name=?]", "user_profile[user_id]"

      assert_select "input#user_profile_age[name=?]", "user_profile[age]"

      assert_select "input#user_profile_prefecture_id[name=?]", "user_profile[prefecture_id]"

      assert_select "input#user_profile_gender_id[name=?]", "user_profile[gender_id]"

      assert_select "input#user_profile_job_id[name=?]", "user_profile[job_id]"

      assert_select "input#user_profile_height[name=?]", "user_profile[height]"

      assert_select "input#user_profile_weight[name=?]", "user_profile[weight]"
    end
  end
end
