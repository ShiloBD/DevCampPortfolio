class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include DefaultPageContent
  include SetSource
  include CurrentUserConcern

  before_action :set_copyright

  def set_copyright
    @copyright =  DaviesIncViewTool::Renderer.copyright 'Shilo Davies', 'All rights reserved'
  end
end