class CreateRaffles < ActiveRecord::Migration[6.1]
  def change
    create_table :raffles do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :type_id, null: false, foreign_key: true
      t.string :title
      t.text :description, null:true
      t.datetime :probable_draw_date
      t.datetime :sale_start_date
      t.datetime :sale_end_date
      t.datetime :draw_date, null:true
      t.float :ticket_value

      t.timestamps
    end
  end
end
