class BrowseController < ApplicationController
  def index
    pattern = "#{Rails.root}/public/mocknb/**.html"
    @paths = Dir[pattern]
    @paths = @paths.map{|path| path.gsub("#{Rails.root}/public", 'http://localhost:3000')}
  end
end
