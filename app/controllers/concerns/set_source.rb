module SetSource
  extend ActiveSupport::Concer

  include do
    before_filter :set_source
  end

  def set_source
    session[:source] = params[:q] if params [:q]
  end
end