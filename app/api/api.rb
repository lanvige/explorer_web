require 'grape'

# require all the resources and entities under api folder.
# http://stackoverflow.com/questions/735073/best-way-to-require-all-files-from-a-directory-in-ruby
Dir[File.dirname(__FILE__) + '/resources/*.rb'].each do |file|
  require File.basename(file, File.extname(file))
end

module Explorer
  class API < Grape::API
    # prefix 'api'
    format :json
    default_format :json
    
    version 'v1', :using => :path

    namespace :info do
      desc "Provides information about the API"
      get do
        { api:"Grape Demo API", version: version }
      end
    end

    mount Explorer::UserAPI => '/'
    mount Explorer::NoticeAPI => '/'


    namespace :roles do
      desc "Provides information about the API"
      get do
        @roles = Role.all
        present @roles
      end
    end

    namespace :clazzes do
      desc ""
      get do
        @clazzes = Clazz.all
        present @clazzes
      end
    end

  end
end

