if Rails.env.development?
  require 'webmock'
  include WebMock::API
  require_relative '../../spec/support/fake_dcm'
  WebMock.disable_net_connect!(allow_localhost: true)

  stub_request(:any, /dcm.tops.gdi/).to_rack(FakeDCM)
end
