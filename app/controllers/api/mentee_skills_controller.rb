module Api
  class MenteeSkillsController < ApplicationController
    def index
      skills = Skill.where("mentee = ? AND name = ?", true, params[:skill])

      render json: SkillSerializer.new(skills, options).serialized_json
    end

    private

    def options
      @options ||= { include: %i[user] }
    end
  end
end
