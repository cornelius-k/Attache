class Dossier < ApplicationRecord
  has_many :sheets, :dependent => :destroy
end
