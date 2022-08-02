class LabAssistant < ApplicationRecord
    has_many :requests, dependent: :destroy
end
