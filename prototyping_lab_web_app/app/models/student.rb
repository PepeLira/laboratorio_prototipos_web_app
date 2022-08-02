class Student < ApplicationRecord
    has_many :requests, dependent: :destroy
end
