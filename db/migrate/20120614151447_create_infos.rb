class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :title
      t.string :url
      t.text :content
      t.string :contact
      t.datetime :pushlish_at
      t.string :original_site

      t.timestamps
    end
  end
end
