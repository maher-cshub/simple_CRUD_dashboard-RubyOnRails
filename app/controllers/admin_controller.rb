class AdminController < ApplicationController

  protect_from_forgery with: :exception

  before_action :authenticate_admin!

  protected

  def after_sign_in_path_for(resource)
    current_user.is_a?(Admin) ? dashboard2_index_path: (stored_location_for(resource) || root_path)
  end



end