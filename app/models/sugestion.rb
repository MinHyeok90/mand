class Sugestion < ActiveRecord::Base
  belongs_to :user
    validates :content, presence: { messages: "내용이 비었습니다."}
end
