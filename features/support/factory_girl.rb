World(FactoryGirl::Syntax::Methods)


After do
  if Rails.env.test?
    FileUtils.rm_rf(Dir["#{Rails.root}/public/system/e911s"])
  end
end
