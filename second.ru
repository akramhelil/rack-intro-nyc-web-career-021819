require 'rack'

class MyServer 
  def call(env)
    return [ 200, {} ]
  end 