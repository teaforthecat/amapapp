module LoginUser
  def login_user role
    login_user = create(role, email: 'test@te.st', password: 'testing1')
    visit new_user_session_path
    fill_in 'Email', with: login_user.email
    fill_in 'Password', with: login_user.password
    submit "form.new_user"
  end
end

World(LoginUser)
