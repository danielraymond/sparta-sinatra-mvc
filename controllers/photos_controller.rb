class PhotosController < Sinatra::Base

  # Sets root as the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), "..")

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $photos = [{
	 id: 0,
	 title: "Cat",
	 body: "This is a cat.",
   image: "https://www.cats.org.uk/uploads/images/featurebox_sidebar_kids/grief-and-loss.jpg"
},
{
    id: 1,
    title: "Dog",
    body: "This is a dog.",
    image: "https://i.ytimg.com/vi/SfLV8hD7zX4/maxresdefault.jpg"
},
{
    id: 2,
    title: "Rabbit",
    body: "This is a rabbit.",
    image: "http://www.littlemonsterepc.co.uk/wp-content/uploads/2015/09/Rabbit-1.jpg"
}];

  get "/" do

    @title = "Photo Homepage"
    erb :'photos/home'
  end

  get "/photos" do

    @title = "Photos"
    @photos = $photos

    erb :'photos/index'
  end

  get "/photos/new" do
    @title = "New"
    erb :'photos/new'
  end

  post "/photos" do
    "Create a new photo"
  end

  get "/photos/:id/edit" do
    @title = "Edit"
    erb :'photos/edit'
  end

  get "/photos/:id" do
    id = params[:id].to_i
    @photo = $photos[id]

    erb :'photos/show'

  end

  put "/photos/:id" do
    id = params[:id]
    "This is the put page SHOW: #{id}"
  end

  delete "/photos/:id" do
    "This will delete a photo"
  end

end
