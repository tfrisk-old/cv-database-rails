module CvsHelper
  def join_skills(cv)
    cv.skills.map { |t| t.name }.join(", ")
  end
end
