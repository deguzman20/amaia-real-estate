# == Schema Information
#
# Table name: unit_types
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :unit_type do
    name { "Condo" }

    trait :unit_list do
      transient do
        unit_count { 10 }
      end

      after(:create) do |unit_type, evaluator|
        create_list(:unit,
                    evaluator.unit_count,
                    unit_type: unit_type)
      end
    end
  end
end
