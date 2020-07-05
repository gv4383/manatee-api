module Api
  class MenteeSkillsController < ApplicationController
    def index
      skills = Skill.where(mentee: true)

      render json: MenteeSkillSerializer.new(skills).serialized_json
    end
  end
end
