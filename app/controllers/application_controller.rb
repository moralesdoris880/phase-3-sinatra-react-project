class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/users" do
    User.all.to_json
  end

  get "/users/:id" do
    user=User.find(params[:id])
    user.to_json(include: :todos)
  end

  get "/todos" do
    Todo.all.to_json
  end

  post "/users" do
    user=User.create(
      username: params[:username]
    )
    user.to_json
  end

  post "/todos" do
    todo=Todo.create(
      title: params[:title],
      user_id: params[:user_id]
    )
    todo.to_json
  end

  patch "/todos/:id" do
    todo=Todo.find(params[:id])
    todo.update(
      title: params[:title]
    )
    todo.to_json
  end

  delete "/todos/:id" do
    todo=Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end

end
