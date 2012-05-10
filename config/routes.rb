require 'api'

GrapeExample::Application.routes.draw do
  # If you like it on a subdomain
  #
  # constraints :subdomain => 'api' do
  #   mount ExampleAPI => '/'
  # end

  mount ExampleAPI => '/api'
end
