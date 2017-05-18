class Actor < ApplicationRecord

  # Actor:
  #  - name: must be present; must be unique in combination with dob
  validates :name, presence: true, :uniqueness => {:scope => :dob}
  #  - dob: no rules
  #  - bio: no rules
  #  - image_url: no rules
  has_many(:character, :class_name => "Character", :foreign_key => "character_id")

  has_many :characters
  has_many :movies, :through => :characters


end
