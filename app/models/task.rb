class Task < ActiveRecord::Base
  belongs_to :event
  validates :title, presence: { message: "[タイトル]を入力してください" }
  validates :detail, presence: { message: "[詳細を入力]してください" }
  validates :solution, presence: { message: "[解決策および解決案]を入力してください" }
  validates :name, presence: { message: "[投稿者]を入力してください" }
end
