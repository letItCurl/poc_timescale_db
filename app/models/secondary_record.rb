class SecondaryRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { reading: :secondary, writing: :secondary }
end
