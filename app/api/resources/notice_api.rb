# require 'grape'

module Explorer
  class NoticeAPI < Grape::API

    namespace :notices do
      desc "Provides information about the API"
      get do
        @notices = Notice.limit(20)
        present @notices
      end
    end
    
  end
end