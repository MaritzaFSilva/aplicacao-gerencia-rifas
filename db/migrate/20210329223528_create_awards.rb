class CreateAwards < ActiveRecord::Migration[6.1]
  def change
    create_table :awards do |t|
      t.references :rifa_id, null: false, foreign_key: true
      t.string :description
      t.integer :placing
      t.references :ticket_drawn, null: true, foreign_key: true

      t.timestamps
    end
  end
end
