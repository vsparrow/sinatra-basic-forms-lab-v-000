require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    # "GOT HERE!"
    erb :index
  end

  post '/' do
    @params = params
    erb :display_puppy
  end

  get '/new' do
    erb :create_puppy
  end

end


    #
    # Now we need to make sure the form is being submitted properly.
    # You'll need to have a third controller action that takes the input from the user and renders a third view
    # (views/display_puppy.erb) which displays the info for the puppy that was just created.
    #
    # Add a link on the homepage to the new puppy form.
