class Card < ApplicationRecord
  include PublicActivity::Model
  tracked owner: proc { |controller, _model| controller.current_user }
  tracked recipient: proc { |controller, _model| controller.current_user }
  belongs_to :list
  validates :title, length: {in: 1..255}
end
