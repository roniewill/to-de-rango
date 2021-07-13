require 'rails_helper'

RSpec.describe "restaurants/new", type: :view do
  before(:each) do
    assign(:restaurant, Restaurant.new(
      name: "MyString",
      phone: "MyString",
      address: "MyText"
    ))
  end

  it "renders new restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurants_path, "post" do

      assert_select "input[name=?]", "restaurant[name]"

      assert_select "input[name=?]", "restaurant[phone]"

      assert_select "textarea[name=?]", "restaurant[address]"
    end
  end
end
