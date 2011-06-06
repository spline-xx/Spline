class CreateDikshas < ActiveRecord::Migration
  def self.up
    create_table :dikshas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :dikshas
  end
end
