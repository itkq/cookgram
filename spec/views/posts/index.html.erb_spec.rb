require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      FactoryGirl.create(:post),
      FactoryGirl.create(:post)
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tbody>tr", :count => 2
  end
end
