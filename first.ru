require 'rack'

my_server = Proc.new do 
  [200, { 'Conten-Type' => 'text/html'}, ['<h1>Hello this is Akram</h1>']]
end

run my_server