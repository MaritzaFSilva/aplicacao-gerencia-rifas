class Ticket < ApplicationRecord
  belongs_to :rifa_id
  belongs_to :user_id
end
