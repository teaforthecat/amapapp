Paperclip::Attachment.default_options[:path] = ":rails_root/spec/support/uploads/:rails_env/:class/:attachment/:id_partition/:filename"

RSpec.configure do |config|
  config.after(:all) do
    FileUtils.rm_rf(Dir["#{Rails.root}/spec/support/uploads/test"])
  end
end
