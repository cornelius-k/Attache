class Dossier < ApplicationRecord
  has_many :sheets, :dependent => :destroy
  validates :title, presence: true
end
