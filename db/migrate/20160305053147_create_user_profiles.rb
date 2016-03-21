class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id, null: false
      t.integer :age
      t.integer :height
      t.integer :weight

      t.integer :prefecture_id
      t.integer :gender_id
      t.integer :job_id
      t.integer :blood_type_id
      t.integer :academic_background_id
      t.integer :drink_id
      t.integer :smoking_id
      t.integer :nationality_id
      t.integer :annual_income_id
      t.integer :marital_history_id
      t.integer :has_children_type_id
      t.integer :marriage_intention_type_id
      t.integer :want_child_type_id
      t.integer :homework_type_id
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end
