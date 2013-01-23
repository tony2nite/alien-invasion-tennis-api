require 'spec_helper'

describe "api/players/new" do
  before(:each) do
    assign(:player, stub_model(Player,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => api_players_path, :method => "post" do
      assert_select "input#player_name", :name => "player[name]"
    end
  end
end
