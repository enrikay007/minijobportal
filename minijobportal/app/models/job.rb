class Job < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :japplications

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :industry_type, presence: true
  validates :job_type, presence: true
  validates :company_name, presence: true, length: {maximum: 50}
  validates :job_position, presence: true
  validates :job_description, presence: true, length: {maximum: 500}
  validates :job_skills, presence: true, length: {maximum: 500}
  validates :address, presence: true

end
