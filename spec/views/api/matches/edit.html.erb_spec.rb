require 'spec_helper'

describe "api/matches/edit" do
  before(:each) do
    @match = assign(:match, stub_model(Match,
      :player_1_id => 1,
      :player_2_id => 1
    ))
  end

  it "renders the edit match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => api_match_path(@match), :method => "post" do
      # assert_select "input#match_player_1_id", :name => "match[player_1_id]"
      # assert_select "input#match_player_2_id", :name => "match[player_2_id]"
    end
  end
end
