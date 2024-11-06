class Reaction < ApplicationRecord
  belongs_to :article, optional: true
end
