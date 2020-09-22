require "../spec_helper"

describe "Home flow" do
  it "works" do
    flow = HomePageFlow.new

    flow.visit_home
    flow.should_have_guide_link
  end
end
