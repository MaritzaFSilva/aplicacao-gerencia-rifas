class Award < ApplicationRecord
  belongs_to :rifa_id
  belongs_to :ticket_drawn
end
