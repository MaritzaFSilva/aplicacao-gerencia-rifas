class Raffle < ApplicationRecord
  belongs_to :user_id
  belongs_to :type_id
end
