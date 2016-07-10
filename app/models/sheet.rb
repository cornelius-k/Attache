class Sheet < ApplicationRecord
  belongs_to :dossier
  has_many :blocks
end
