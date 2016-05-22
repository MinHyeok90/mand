class Mandalart < ActiveRecord::Base
    belongs_to :user
    has_many :replies
    has_many :expireds
end
