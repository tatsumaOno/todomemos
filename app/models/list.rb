class List < ApplicationRecord
  include PublicActivity::Model
  tracked owner: proc { |controller, _model| controller.current_user }
  tracked recipient: proc { |controller, _model| controller.current_user }
  belongs_to :user
  has_many :cards, dependent: :destroy
  validates :title, length: {in: 1..255}

  # accepts_nested_attributes_for :cards, allow_destroy: true, update_only: true
end
