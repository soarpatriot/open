require 'rails_helper'

RSpec.describe "admin/keys/index", type: :view do
  before(:each) do
    assign(:admin_keys, [
      Admin::Key.create!(
        :client_id => "Client",
        :client_secret => "Client Secret"
      ),
      Admin::Key.create!(
        :client_id => "Client",
        :client_secret => "Client Secret"
      )
    ])
  end

  it "renders a list of admin/keys" do
    render
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "Client Secret".to_s, :count => 2
  end
end
