class CreateProRecos < ActiveRecord::Migration[7.0]
  def change
    create_table :pro_recos do |t|
      t.references :user,null: false,foreign_key: true
      t.string     :title,null: false
      t.text       :content,null: false
      t.string     :status, default: 'draft'


      t.timestamps
    end
  end
end
