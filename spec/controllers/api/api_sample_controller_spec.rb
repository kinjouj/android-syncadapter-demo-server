require 'spec_helper'

describe Api::SampleController do
  fixtures :sample

  describe 'GET #index' do
    let(:token) {
      stub(:accessible? => true)
    }

    before do
      controller.stub(:doorkeeper_token) { token }
    end

    it 'respond with 200' do
      get :index, :format => :json
      expect(response).to be_success
    end
  end
end
