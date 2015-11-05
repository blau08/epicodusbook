require 'rails_helper'

RSpec.describe "controllers/show", type: :view do
  before(:each) do
    @controller = assign(:controller, Controller.create!(
      :blog => "Blog",
      :new => "New",
      :create => "Create",
      :update => "Update",
      :destroy => "Destroy",
      :index => "Index",
      :show => "Show",
      :edit => "Edit"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Blog/)
    expect(rendered).to match(/New/)
    expect(rendered).to match(/Create/)
    expect(rendered).to match(/Update/)
    expect(rendered).to match(/Destroy/)
    expect(rendered).to match(/Index/)
    expect(rendered).to match(/Show/)
    expect(rendered).to match(/Edit/)
  end
end
