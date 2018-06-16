class Tuser < ApplicationRecord
    has_secure_password
    has_many :lectures
end
