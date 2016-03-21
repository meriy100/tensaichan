require 'rails_helper'

RSpec.describe "user_profiles/index", type: :view do
  before(:each) do
    assign(:user_profiles, [
      UserProfile.create!(
        :user_id => 1,
        :age => 2,
        :prefecture_id => 3,
        :gender_id => 4,
        :job_id => 5,
        :height => 6,
        :weight => 7
      ),
      UserProfile.create!(
        :user_id => 1,
        :age => 2,
        :prefecture_id => 3,
        :gender_id => 4,
        :job_id => 5,
        :height => 6,
        :weight => 7
      )
    ])
  end

  it "renders a list of user_profiles" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
  end
end
