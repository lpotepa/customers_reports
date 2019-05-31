require 'rails_helper'

describe TransactionsController do
  context 'user passes correct params' do
    let(:params) { { email: "example@example.com", first_name: "John", last_name: "Snow", amount: 1000 } }
    it "return 200 when correct params are sent" do
      post :create, params: params
      expect(response.status).to eq 204
    end
  end
end
