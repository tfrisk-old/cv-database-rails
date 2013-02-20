class LanguagesController < ApplicationController
  def create
    @cv = Cv.find(params[:cv_id])
    @language = @cv.languages.create(params[:language])
    redirect_to cv_path(@cv)
  end

  def destroy
    @cv = Cv.find(params[:cv_id])
    @language = @cv.languages.find(params[:id])
    @language.destroy
    redirect_to cv_path(@cv)
  end
end
