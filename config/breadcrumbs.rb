crumb :root do
  link "メルカリ", root_path
end

# crumb :brands do
#   link "ブランド一覧", brands_path
# end

# crumb :categories do
#   link "カテゴリー一覧", categories_path
# end

# crumb :mypage do
#   link "マイページ", user_path(current_user)
# end

# crumb :item do |item|
#   link item.name, item_path(item)
# end

# crumb :profile do
#   link "プロフィール", edit_user_path
# end

# crumb :userAddress do
#   link "本人情報の登録", edit_address_path
# end

# crumb :logout do
#   link "ログアウト"
# end

# crumb :category do |category|
#   link category.name, category
# end




crumb :logout do
  link "ログアウト", logout_index_path
end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).