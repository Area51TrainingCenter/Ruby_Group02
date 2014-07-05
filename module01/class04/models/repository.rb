class Repository < JSONModel
  get_from_json "https://api.github.com/users/%username/repos"
end