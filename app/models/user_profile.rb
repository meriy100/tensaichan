# == Schema Information
#
# Table name: user_profiles
#
#  id                         :integer          not null, primary key
#  user_id                    :integer          not null
#  age                        :integer
#  height                     :integer
#  weight                     :integer
#  prefecture_id              :integer
#  gender_id                  :integer
#  job_id                     :integer
#  blood_type_id              :integer
#  academic_background_id     :integer
#  drink_id                   :integer
#  smoking_id                 :integer
#  nationality_id             :integer
#  annual_income_id           :integer
#  marital_history_id         :integer
#  has_children_type_id       :integer
#  marriage_intention_type_id :integer
#  want_child_type_id         :integer
#  homework_type_id           :integer
#  deleted_at                 :datetime
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#

class UserProfile < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  acts_as_paranoid

  belongs_to :user
  belongs_to :job
  belongs_to :gender
  belongs_to :blood_type
  belongs_to :academic_background
  belongs_to :drink
  belongs_to :smoking
  belongs_to :nationality
  belongs_to :annual_income
  belongs_to :marital_history
  belongs_to :has_children_type
  belongs_to :marriage_intention_type
  belongs_to :want_child_type
  belongs_to :homework_type

  def self.belongs_to_columns
    [
      :gender, :job, :blood_type, :academic_background,
      :drink, :smoking, :nationality,
      :annual_income, :marital_history, :has_children_type,
      :marriage_intention_type, :want_child_type, :homework_type
    ]
  end

  def self.belongs_to_column_classes
    {
      job: Job,
      gender: Gender,
      blood_type: BloodType,
      academic_background: AcademicBackground,
      drink: Drink,
      smoking: Smoking,
      nationality: Nationality,
      annual_income: AnnualIncome,
      marital_history: MaritalHistory,
      has_children_type: HasChildrenType,
      marriage_intention_type: MarriageIntentionType,
      want_child_type: WantChildType,
      homework_type: HomeworkType
    }
  end
end
