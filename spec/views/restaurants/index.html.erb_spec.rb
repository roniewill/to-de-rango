require 'rails_helper'

RSpec.describe "restaurants/index", type: :view do
  before(:each) do
    assign(:restaurants, [
      Restaurant.create!(
        name: "Name",
        phone: "Phone",
        address: "MyText"
      ),
      Restaurant.create!(
        name: "Name",
        phone: "Phone",
        address: "MyText"
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
