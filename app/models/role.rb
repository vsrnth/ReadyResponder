class Role < ApplicationRecord
  # rails 5 deprecation
  # attr_accessible :name
  has_and_belongs_to_many :users

  def to_s
    self.name.to_s
  end

end
