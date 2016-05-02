    def g *args # The splat here says accept 1 or more arguments, in the form of an Array  
      args      # This returns an array  
    end  
      
    def f arg  
      arg  
    end  
      
    #x,y,z = [true, 'two', false] # parrallel assignment lets us do this  
    x,y,z = [1, 'two', 3]
      
  
    if a = f(x) and b = f(y) and c = f(z) then  
      puts "Look, Dad. No hand!"
      d = g(a,b,c) # An array is returned, and stored in variable d  
    end  
      

    ##p d # using p to puts and inspect d  
    puts d

    # this will not work because && has higher precedence than =
    if a = f(x) && b = f(y) && c = f(z) then  
      puts "Mom. I am here!!"
      #d = g(a,b,c) # An array is returned, and stored in variable d  
    end  