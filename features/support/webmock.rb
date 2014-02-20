require 'webmock/cucumber'
require_relative '../../spec/support/fake_dcm'
WebMock.disable_net_connect!(allow_localhost: true)


Before do
  stub_request(:any, /.*.dcm.tops.gdi/).to_rack(FakeDCM)
end
