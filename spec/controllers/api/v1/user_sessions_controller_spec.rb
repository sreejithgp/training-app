require 'rails_helper'

RSpec.describe Api::V1::UserSessionsController, type: :controller do
  describe '#login' do
    context 'has a valid' do
      it 'success response when logged with correct credentials' do
        user = FactoryBot.create(:user)
        post :login, params: {email: user.email, password: user.password}
        expect(response.header["Content-Type"]).to include "application/json"
        expect((JSON response.body).keys).to include "response"
        expect((JSON response.body).keys).to include "code"
        expect((JSON response.body).keys).to include "status"
      end

      it 'error response when logged with incorrect credentials' do
        post :login, params: {email: "fo@bar.com", password: "foobar"}
        expect(response.header["Content-Type"]).to include "application/json"
        expect((JSON response.body).keys).to include "code"
        expect((JSON response.body).keys).to include "status"
        expect((JSON response.body).keys).to include "message"
        expect((JSON response.body).keys).to include "description"
      end
    end
  end
end
