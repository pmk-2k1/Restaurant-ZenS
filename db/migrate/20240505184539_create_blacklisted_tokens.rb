class CreateBlacklistedTokens < ActiveRecord::Migration[7.1]
  def change
    create_table :blacklisted_tokens do |t|
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
