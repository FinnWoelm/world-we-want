class CreateIdentities < ActiveRecord::Migration[5.0]
  def change
    create_table :identities do |t|
      t.belongs_to :vision
      t.string :political_affiliation
      t.string :religious_affiliation
      t.integer :age
      t.string :gender
      t.string :home_country
      t.string :ethnicity
      t.string :profession
      t.string :other

      t.timestamps
    end
  end
end
