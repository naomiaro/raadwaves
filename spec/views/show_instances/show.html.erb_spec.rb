require 'rails_helper'

RSpec.describe "show_instances/show", :type => :view do
  before(:each) do
    @show_instance = assign(:show_instance, ShowInstance.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
