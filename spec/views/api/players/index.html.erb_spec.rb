require 'spec_helper'

describe "api/players/index" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :name => "Name",
        :created_at => 1.days.ago
      ),
      stub_model(Player,
        :name => "Name",
        :created_at => 1.days.ago
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
