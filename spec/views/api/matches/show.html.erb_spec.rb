require 'spec_helper'

describe "api/matches/show" do
  before(:each) do
    @match = assign(:match, stub_model(Match,
      :player_1_id => 1,
      :player_2_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    # rendered.should match(/1/)
    # rendered.should match(/2/)
  end
end
