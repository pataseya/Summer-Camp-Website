class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :allergies
      t.string :parent
      t.string :parentemail
      t.string :notes

      t.timestamps
    end
  end
end
