module Api
  class MenteeSkillsController < ApplicationController
    def index
      skills = Skill.where(mentee: true)

      render json: SkillSerializer.new(skills, options).serialized_json
    end

    private

    def options
      @options ||= { include: %i[user] }
    end
  end
end
