class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.string :caption
      t.integer :order_num , :default => -1

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
