account = Account.first_or_create
user = User.where(email: "test@test.com").first_or_initialize
user.password = user.password_confirmation = "password"
user.account = account
user.save
