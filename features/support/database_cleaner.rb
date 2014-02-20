Before('@no-txn,@selenium,@culerity,@celerity,@javascript') do
  # { :except => [:widgets] } may not do what you expect here
  # as Cucumber::Rails::Database.javascript_strategy overrides
  # this setting.
  DatabaseCleaner.strategy = :truncation
end

Before('~@no-txn', '~@selenium', '~@culerity', '~@celerity', '~@javascript') do
  DatabaseCleaner.strategy = :transaction
end
