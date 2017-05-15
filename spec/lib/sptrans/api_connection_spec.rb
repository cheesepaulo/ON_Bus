require 'rails_helper'
require 'sptrans/api_connection'

describe SPTrans do
  describe ".connect" do
    subject { SPTrans.connect(HTTPClient.new).status_code }

    it { is_expected.to eq 200 }
  end
end
