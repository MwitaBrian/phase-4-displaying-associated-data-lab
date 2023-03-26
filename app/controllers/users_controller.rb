class UsersController < ApplicationController
  wrap_parameters format: []

  def show
    user = User.find_by(id: params[:id])
    render json: user.to_json(include: :items)
  end
end
