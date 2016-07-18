# require 'rails_helper'
#
# describe SessionsController do
#
#   before do
#     request.env['omniauth.auth'] = OmniAuth.config.mock_auth
#   end
#
#   describe '#create' do
#     it "should successfully create a user" do
#       expect {
#         post :create, provider: :spotify, :info => { :display_name => 'Fake User',
#                     :id           => '12345'}
#       }.to change{ User.count }.by (1)
#     end
#   end
# end
