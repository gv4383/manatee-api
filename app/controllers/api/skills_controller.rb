module Api
  class SkillsController < ApplicationController
    protect_from_forgery with: :null_session

    def create
      skill = Skill.new(skill_params)

      if skill.save
        render json: SkillSerializer.new(skill).serialized_json
      else
        render json: { error: skill.errors.messages }, status: 400
      end
    end

    private
    
    def skill_params
      params.require(:skill).permit(:name, :description, :rating, :user_id)
    end
  end
end
