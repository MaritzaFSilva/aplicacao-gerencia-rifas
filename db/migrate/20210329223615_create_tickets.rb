class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.references :rifa_id, null: false, foreign_key: true
      t.references :user_id, null: true, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
