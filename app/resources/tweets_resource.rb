require 'api'

class ExampleAPI < Grape::API
  default_format :json
  format :json
  
  resources :tweets do
    # /tweets
    get do
      present Tweet.all, :with => Entities::Tweet
    end

    get '/:id' do
      present Tweet.find(params[:id]), :with => Entities::Tweet
    end

    post do
      tweet = Tweet.new(params[:tweet])

      if tweet.save
        {status: 'ok', id: tweet.id}
      else
        {status: 'Da hell?'}
      end
    end
  end
end