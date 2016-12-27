class AddIdTokenIdTokenExpirationToVision < ActiveRecord::Migration[5.0]
  def change
    add_column :visions, :id_token, :string
    add_index :visions, :id_token, unique: true
    add_column :visions, :id_token_expiration, :datetime
  end
end
