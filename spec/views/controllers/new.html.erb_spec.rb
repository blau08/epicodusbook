require 'rails_helper'

RSpec.describe "controllers/new", type: :view do
  before(:each) do
    assign(:controller, Controller.new(
      :blog => "MyString",
      :new => "MyString",
      :create => "MyString",
      :update => "MyString",
      :destroy => "MyString",
      :index => "MyString",
      :show => "MyString",
      :edit => "MyString"
    ))
  end

  it "renders new controller form" do
    render

    assert_select "form[action=?][method=?]", controllers_path, "post" do

      assert_select "input#controller_blog[name=?]", "controller[blog]"

      assert_select "input#controller_new[name=?]", "controller[new]"

      assert_select "input#controller_create[name=?]", "controller[create]"

      assert_select "input#controller_update[name=?]", "controller[update]"

      assert_select "input#controller_destroy[name=?]", "controller[destroy]"

      assert_select "input#controller_index[name=?]", "controller[index]"

      assert_select "input#controller_show[name=?]", "controller[show]"

      assert_select "input#controller_edit[name=?]", "controller[edit]"
    end
  end
end
