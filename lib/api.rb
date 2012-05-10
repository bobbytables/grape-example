require 'grape'

class ExampleAPI < Grape::API
  get '/about' do
    'Wham bam thank you maam'
  end
end

Dir["#{Rails.root}/lib/entities/*.rb"].each {|file| require file }
Dir["#{Rails.root}/app/resources/*.rb"].each { |file| require file }