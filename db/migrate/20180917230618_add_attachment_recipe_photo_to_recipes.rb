class AddAttachmentRecipePhotoToRecipes < ActiveRecord::Migration[5.2]
  def self.up
    change_table :recipes do |t|
      t.attachment :recipe_photo
    end
  end

  def self.down
    remove_attachment :recipes, :recipe_photo
  end
end
