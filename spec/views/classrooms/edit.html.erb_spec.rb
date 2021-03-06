require 'rails_helper'

RSpec.describe "classrooms/edit", type: :view do
  before(:each) do
    @classroom = assign(:classroom, Classroom.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit classroom form" do
    render

    assert_select "form[action=?][method=?]", classroom_path(@classroom), "post" do

      assert_select "input#classroom_name[name=?]", "classroom[name]"

      assert_select "textarea#classroom_description[name=?]", "classroom[description]"
    end
  end
end
