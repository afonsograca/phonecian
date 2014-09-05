require 'spec_helper'

describe "scripts/index.html.erb" do
  before(:each) do
    assign(:scripts, [
      stub_model(Script),
      stub_model(Script)
    ])
  end

  it "renders a list of scripts" do
    render
  end
end
