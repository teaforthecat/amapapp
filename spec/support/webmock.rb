require 'webmock/rspec'
require_relative 'fake_dcm'
WebMock.disable_net_connect!(allow_localhost: true)


RSpec.configure do |config|
  config.before(:each) do
    stub_request(:any, /.*.dcm.tops.gdi/).to_rack(FakeDCM)
  end
end
