class UserSerializer < ApplicationSerializer
  attributes :first_name, :last_name, :email

  has_many :skills
end
