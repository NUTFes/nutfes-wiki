class Event < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
   validates :title, presence: { message: "入力してください" }
end
