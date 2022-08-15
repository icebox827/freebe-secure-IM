class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :body
      t.integer :user_id

      t.timestamps
    end
    add_index :messages, :user_id
  end
end
