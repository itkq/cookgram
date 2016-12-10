require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, FactoryGirl.create(:post))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@post.body)
  end
end
