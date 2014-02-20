class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.boolean :active
      t.string :dcm_account_code
      t.string :features

      t.timestamps
    end
  end
end
