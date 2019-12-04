require 'rack'

class MyServer 
  
  def call(env)
    return [ 200, { 'Content-Type'=> 'text/html'}, pretty_response ]
  end 
  
  def pretty_response
    (Time.now.to_i % 2).zero? ? ['<h1>Hello this is from pretty response</h1>'] : [" <strong>Hello this is the weak hello</strong>"]
  end
end

run MyServer.new