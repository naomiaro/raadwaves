require 'rails_helper'

RSpec.describe "show_instances/edit", :type => :view do
  before(:each) do
    @show_instance = assign(:show_instance, ShowInstance.create!())
  end

  it "renders the edit show_instance form" do
    render

    assert_select "form[action=?][method=?]", show_instance_path(@show_instance), "post" do
    end
  end
end
