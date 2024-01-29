class AboutU < ApplicationRecord
	has_one :message_head
  has_one :committee_detail
  has_one :president_message
  has_one :desk_message
end
