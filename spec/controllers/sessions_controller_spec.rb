# require 'rails_helper'
#
# describe SessionsController, type: :controller do
#
#   before do
#     Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:spotify]
#   end
#
#   describe '#create' do
#     it "should successfully create a user" do
#       expect { post :create, provider: :spotify }.to change{ User.count }.by(1)
#     end
#   end
# end
