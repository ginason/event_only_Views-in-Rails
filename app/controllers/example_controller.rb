class ExampleController < ApplicationController
  def form
    @job_application = JobApplication.new
  end
  def create
  
    @job_application = JobApplication.new(params(:example))

    if @job_application.save
      redirect_to '/events'
    else
      render :form
    end
  end
end
