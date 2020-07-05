class MenteeSkillSerializer < ApplicationSerializer
  attributes :name,
             :description,
             :rating,
             :mentor,
             :mentee,
             :user_id
end
