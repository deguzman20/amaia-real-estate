# == Schema Information
#
# Table name: states
#
#  id                   :bigint           not null, primary key
#  region               :string(255)
#  regional_designation :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
FactoryBot.define do
  factory :state do
    region { "NCR" }
    regional_designation { "NCR" }

    trait :state_cities do
      transient do
        city_count { 6 }
      end

      after(:create) do |state, evaluator|
        create_list(:city,
                    evaluator.city_count,
                    state: state)
      end
    end
  end
end
