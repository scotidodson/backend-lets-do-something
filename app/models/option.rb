class Option < ApplicationRecord
  belongs_to :idea
  belongs_to :event
  belongs_to :guest

end
