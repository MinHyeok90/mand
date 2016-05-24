class Mandalart < ActiveRecord::Base
    belongs_to :user
    has_many :replies
    has_many :expireds
    validates :title, presence: { messages: "제목이 비었습니다."}
    validates :box55, presence: { messages: "중심 목표가 비었습니다."}

end
