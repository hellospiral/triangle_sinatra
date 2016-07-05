require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')
require('pry')
require('launchy')


get('/') do
  erb(:form)
end

get('/triangle') do
  @side_a = params['side_a']
  @side_b = params['side_b']
  @side_c = params['side_c']

  # puts @side_a + ", " + @side_b + ", " + @side_c
  #   puts @side_a.class + ", " + @side_b.class + ", " + @side_c.class


  new_triangle = Triangle.new(@side_a, @side_b, @side_c)
  @triangle_type = new_triangle.triangle_type()
  erb(:triangle)


end
