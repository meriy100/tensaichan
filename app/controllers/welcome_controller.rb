class WelcomeController < ApplicationController
  skip_before_action :authenticate
  before_action :signed?
  layout 'unlogin'

  def index
  end

  private

  def signed?
    redirect_to :root if signed_in?
  end
end
