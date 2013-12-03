class HomeController < ApplicationController

  def index
    # don't need to do anything here
  end

  #this is the controller that will be executed after the user pressed the lookup button
  def query
    @query_text = params[:query]

    # call the system utility whois (must install first (see above))
    # pass the query_text enter on last page to whois
    @result = `whois #{@query_text}`.split("\n")
    # rails will now display the app/views/home/query.html.erb
    # is does this because the controller is named query
    # the @result can be used in the query.html.erb
  end

end