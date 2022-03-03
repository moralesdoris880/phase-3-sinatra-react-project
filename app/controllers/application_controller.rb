class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/users" do
    User.all.to_json
  end

  get "/users/:id" do
    user=User.find(params[:id])
    user.to_json(include: :todos)
  end

  post "/users" do
    user=User.create(
      username: params[:username],
      password: params[:password],
      email: params[:email]
    )
    user.to_json
  end

  patch "/todos/:id" do
    todo=Todo.find(params[:id])
    todo.update(
      title: params[:title]
      content: params[:content]
    )
    todo.to_json
  end

  delete "/todos/:id" do
    todo=Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end
end
