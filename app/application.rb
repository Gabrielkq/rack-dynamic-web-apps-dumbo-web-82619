class Application

  def call(env)
    resp = Rack::Response.new
    
    num1 = Kernel.rand(1..2)
    num2 = Kernel.rand(1..2)
    num3 = Kernel.rand(1..2)

    resp.write "#{num1}\n"

    resp.write "#{num2}\n"
    resp.write "#{num3}\n"

    if num1==num2 && num2==num3
      resp.write "you win, your prize is nothing"
    else
      resp.write "your a loser, baby, so why you kill me"
    end

    resp.finish

  end

end
