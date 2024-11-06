class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :reactions, dependent: :destroy
  has_many :users, through: :reactions #or comments doesn't matter

Kinds = %w[like dislike].freeze
KindsSpanish = {"like" => "Me gusta 👍", "dislike" => "No me gusta 👎"}.freeze

  def count_with_kind(arg)
        number = self.reactions.where(kind: arg).count
        if "#{arg}" == "like"
          return "👍#{number}"
        elsif "#{arg}" == "dislike"
          return "👎#{number}"
        end
  end


end
