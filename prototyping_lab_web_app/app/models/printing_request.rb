class PrintingRequest < ApplicationRecord
  belongs_to :student
  belongs_to :printing_queue
  belongs_to :lab_assistant
end
