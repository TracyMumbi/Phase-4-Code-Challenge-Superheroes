class HeroPowerSerializer < ActiveModel::Serializer
  attributes :strength, :power_id, :hero_id
  belongs_to :power
  belongs_to :hero
end
