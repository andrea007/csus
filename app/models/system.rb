class System < ActiveRecord::Base
  # validations
  validates :system_name, presence: true, uniqueness: true
end
