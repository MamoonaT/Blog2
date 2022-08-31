class Student < ApplicationRecord
    validates :first_name, presence: true, uniqueness: true
    has_one :account
end
