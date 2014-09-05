require 'spec_helper'

describe "scripts/show.html.erb" do
  before(:each) do
    @script = assign(:script, stub_model(Script))
  end

  it "renders attributes in <p>" do
    render
  end
end
