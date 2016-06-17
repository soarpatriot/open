require 'rails_helper'

RSpec.describe "admin/keys/edit", type: :view do
  before(:each) do
    @admin_key = assign(:admin_key, Admin::Key.create!(
      :client_id => "MyString",
      :client_secret => "MyString"
    ))
  end

  it "renders the edit admin_key form" do
    render

    assert_select "form[action=?][method=?]", admin_key_path(@admin_key), "post" do

      assert_select "input#admin_key_client_id[name=?]", "admin_key[client_id]"

      assert_select "input#admin_key_client_secret[name=?]", "admin_key[client_secret]"
    end
  end
end
