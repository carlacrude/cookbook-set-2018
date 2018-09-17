class Recipe < ApplicationRecord
  belongs_to :recipe_type
  belongs_to :cuisine

  has_attached_file :recipe_photo
  validates_attachment_content_type :recipe_photo, content_type: /\Aimage\/.*\z/, message: 'Tipo da imagem não é válido'

  validates :title, :cuisine, :difficulty, :cook_time,
            :ingredients, :cook_method, presence: true

  def cook_time_min
    "#{cook_time} minutos"
  end
end
