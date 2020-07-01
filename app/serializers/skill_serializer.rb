class SkillSerializer < ApplicationSerializer
  attributes :name, :description, :rating, :mentor, :user_id
end
