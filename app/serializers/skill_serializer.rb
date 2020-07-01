class SkillSerializer < ApplicationSerializer
  attributes :name,
             :description,
             :rating,
             :mentor,
             :mentee,
             :user_id
end
