class ProjectsController < ApplicationController
  def create
    @cv = Cv.find(params[:cv_id])
    @project = @cv.projects.create(params[:project])
    redirect_to cv_path(@cv)
  end

  def destroy
    @cv = Cv.find(params[:cv_id])
    @project = @cv.projects.find(params[:id])
    @project.destroy
    redirect_to cv_path(@cv)
  end
end
