require 'rails_helper'

RSpec.describe "show_instances/index", :type => :view do
  before(:each) do
    assign(:show_instances, [
      ShowInstance.create!(),
      ShowInstance.create!()
    ])
  end

  it "renders a list of show_instances" do
    render
  end
end
