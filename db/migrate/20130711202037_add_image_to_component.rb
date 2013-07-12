class AddImageToComponent < ActiveRecord::Migration
  def self.up
    change_table :components do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :components, :image
  end
end