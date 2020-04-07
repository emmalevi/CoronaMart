class ApplicationController < ActionController::Base
skip_before_action :authenticate_user!, raise: false, only: :index
end
