class CreateVisions < ActiveRecord::Migration[5.0]
  def change
    create_table :visions do |t|
      t.text :content
      t.attachment :image
      t.string :color

      t.timestamps
    end
  end
end
