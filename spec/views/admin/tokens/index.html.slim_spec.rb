require 'rails_helper'

RSpec.describe "admin/tokens/index", type: :view do
  before(:each) do
    assign(:admin_tokens, [
      Admin::Token.create!(
        :access_token => "Access Token",
        :refresh_token => "Refresh Token",
        :expired_at => "Expired At",
        :datatime => "Datatime"
      ),
      Admin::Token.create!(
        :access_token => "Access Token",
        :refresh_token => "Refresh Token",
        :expired_at => "Expired At",
        :datatime => "Datatime"
      )
    ])
  end

  it "renders a list of admin/tokens" do
    render
    assert_select "tr>td", :text => "Access Token".to_s, :count => 2
    assert_select "tr>td", :text => "Refresh Token".to_s, :count => 2
    assert_select "tr>td", :text => "Expired At".to_s, :count => 2
    assert_select "tr>td", :text => "Datatime".to_s, :count => 2
  end
end
