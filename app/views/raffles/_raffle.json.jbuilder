json.extract! raffle, :id, :user_id_id, :type_id_id, :title, :description, :probable_draw_date, :sale_start_date, :sale_end_date, :draw_date, :ticket_value, :created_at, :updated_at
json.url raffle_url(raffle, format: :json)
