class CreateUserLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :user_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
