class Agent < ActiveRecord::Base
  extend AgentImporters
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, uniqueness: true
  before_save :sanitize_description

  def sanitize_description
    self.description = ActionView::Base.full_sanitizer.sanitize(self.description) if self.description
  end
end
