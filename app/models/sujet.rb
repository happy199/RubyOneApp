class Sujet < ApplicationRecord
validates :libelle, presence: true, length: {minimum: 5, maximum: 500}
end