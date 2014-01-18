class Exercise < Sinatra::Base
  visitors = (0...30).map{rand(500)}

  get '/user-trend' do
    content_type 'json'

    visitors.unshift rand(500)
    visitors.pop

    { exercise: {
      visitors: visitors,
      conversion7day: rand_f(50),
      conversion30day: rand_f(50),
      pagespervisit: rand_f(10),
      responsetime: rand_f(500)
      }
    }.to_json
  end

  private

  def rand_f(max)
    rand * max
  end
end
