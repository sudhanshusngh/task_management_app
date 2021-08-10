class Work < ApplicationRecord
  belongs_to :task
  validates :status, inclusion: { in: [ 'not-started', 'in-progress', 'complete']}
  
  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    ['Complete', 'complete']
  ]
end
