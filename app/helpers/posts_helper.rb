module PostsHelper
  def correct_author
    current_user && !current_user.posts.find_by(id: params[:id]).nil?
  end
end
