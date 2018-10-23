class ApplicationController < ActionController::Base
    # xssのチェック
    protect_from_forgery with: :exception
    include SessionsHelper
end
