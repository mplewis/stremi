class CreateConfirmationCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :confirmation_codes do |t|
      t.belongs_to :subscriber, foreign_key: true, null: false
      t.text :code, null: false

      t.timestamps
    end
  end
end
