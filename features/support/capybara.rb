require 'capybara/rails'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

module SubmitForm
  def submit selector
    within selector do
      find('[name=commit]').click #click_button "Sign up"
    end
  end
end

World(SubmitForm)
