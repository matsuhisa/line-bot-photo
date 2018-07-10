require 'rails_helper'

RSpec.describe "photos/index", type: :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        :path => "Path",
        :user_id => 2
      ),
      Photo.create!(
        :path => "Path",
        :user_id => 2
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
