class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user
      t.string :receiver_user_name
      t.text :message_note
      t.timestamps null: false
    end
  end
end
