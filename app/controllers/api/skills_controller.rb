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

    def update
      skill = Skill.find(params[:id])

      if skill.update(skill_params)
        render json: SkillSerializer.new(skill).serialized_json
      else
        render json: { error: skill.errors.messages }, status: 404
      end
    end

    def destroy
      skill = Skill.find(params[:id])

      if skill.destroy
        head :no_content
      else
        render json: { error: skill.errors.messages }, status: 404
      end
    end

    private
    
    def skill_params
      params.require(:skill).permit(
        :name,
        :description,
        :rating,
        :mentor,
        :mentee,
        :user_id
      )
    end
  end
end
