class CreateSubscribers < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribers do |t|
      t.text :email, null: false
      t.text :zip, null: false
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end
