class Printer < ApplicationRecord
    has_one :printing_queue, dependent: :destroy
end
