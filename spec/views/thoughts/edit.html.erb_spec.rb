require 'rails_helper'

RSpec.describe "thoughts/edit", type: :view do
  before(:each) do
    @thought = assign(:thought, Thought.create!(
      :title => "MyString",
      :body => "MyText",
      :user => nil
    ))
  end

  it "renders the edit thought form" do
    render

    assert_select "form[action=?][method=?]", thought_path(@thought), "post" do

      assert_select "input[name=?]", "thought[title]"

      assert_select "textarea[name=?]", "thought[body]"

      assert_select "input[name=?]", "thought[user_id]"
    end
  end
end
