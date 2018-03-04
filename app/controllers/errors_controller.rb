class ErrorsController < ApplicationController
  def not_found
    respond_to do |format|
      format.html { render template: "errors/not_found",
                           layout: "layouts/application",
                           status: 404 }
    end
  end

  def server_error
    respond_to do |format|
      format.html { render template: "errors/server_error",
                           layout: "layouts/application",
                           status: 500 }
    end
  end
end
