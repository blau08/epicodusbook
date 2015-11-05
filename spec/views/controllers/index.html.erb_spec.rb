require 'rails_helper'

RSpec.describe "controllers/index", type: :view do
  before(:each) do
    assign(:controllers, [
      Controller.create!(
        :blog => "Blog",
        :new => "New",
        :create => "Create",
        :update => "Update",
        :destroy => "Destroy",
        :index => "Index",
        :show => "Show",
        :edit => "Edit"
      ),
      Controller.create!(
        :blog => "Blog",
        :new => "New",
        :create => "Create",
        :update => "Update",
        :destroy => "Destroy",
        :index => "Index",
        :show => "Show",
        :edit => "Edit"
      )
    ])
  end

  it "renders a list of controllers" do
    render
    assert_select "tr>td", :text => "Blog".to_s, :count => 2
    assert_select "tr>td", :text => "New".to_s, :count => 2
    assert_select "tr>td", :text => "Create".to_s, :count => 2
    assert_select "tr>td", :text => "Update".to_s, :count => 2
    assert_select "tr>td", :text => "Destroy".to_s, :count => 2
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    assert_select "tr>td", :text => "Show".to_s, :count => 2
    assert_select "tr>td", :text => "Edit".to_s, :count => 2
  end
end
