class PhotosController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Hello world! - goodbyeasjhdgajhgs"
  end

  get "/photos" do
    "This is the photos page"
  end

  get "/photos/new" do
    "New photo form"
  end

  post "/photos" do
    "Create a new photo"
  end

  get "/photos/:id/edit" do
    "This is a page to edit photos"
  end

  get "/photos/:id" do
    id = params[:id]
    "SHOW: #{id}"
  end

  put "/photos/:id" do
    id = params[:id]
    "This is the put page SHOW: #{id}"
  end

  delete "/photos/:id" do
    "This will delete a photo"
  end
end
