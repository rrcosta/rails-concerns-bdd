require 'rails_helper'

RSpec.describe "thoughts/index", type: :view do
  before(:each) do
    assign(:thoughts, [
      Thought.create!(
        :title => "Title",
        :body => "MyText",
        :user => nil
      ),
      Thought.create!(
        :title => "Title",
        :body => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of thoughts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
