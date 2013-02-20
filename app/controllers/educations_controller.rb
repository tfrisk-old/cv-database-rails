class EducationsController < ApplicationController
  def create
    @cv = Cv.find(params[:cv_id])
    @education = @cv.educations.create(params[:education])
    redirect_to cv_path(@cv)
  end

  def destroy
    @cv = Cv.find(params[:cv_id])
    @education = @cv.educations.find(params[:id])
    @education.destroy
    redirect_to cv_path(@cv)
  end
end
