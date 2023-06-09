class Project < ApplicationRecord
  has_many :tasks

  after_initialize :set_defaults

  validates_presence_of :title, :description, :percent_complete

  scope :almost_completed, -> { where('percent_complete > 75.0') }
  scope :task_left_to_do, -> { where('percent_complete < 75.0') }

  def set_defaults
    self.percent_complete ||= 0.0
  end
end
