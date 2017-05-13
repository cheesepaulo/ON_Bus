require 'spec_helper'
require './lib/api_connection'

describe APIConnection do
  subject { APIConnection::connect.code  }
  it "works and response true" do
    is_expected.to eql 200
  end
end
