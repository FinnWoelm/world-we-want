class UseEnumForColor < ActiveRecord::Migration[5.0]
  def up
    remove_column :visions, :color
    add_column :visions, :color, :integer, default: 0
  end

  def down
    remove_column :visions, :color
    add_column :visions, :color, :string, default: "red"
  end
end
