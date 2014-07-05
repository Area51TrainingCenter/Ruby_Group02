class GithubController < Controller
  def index(args = {})
    render "index", repositories: Repository.all
  end
end