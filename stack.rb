class Stack
  def initialize(size)
    @store = Array.new()
    @limit_size = size
    @current_size = 0
    p "Store size is #{@current_size}"
  end
  
  def pop
    if @current_size > 0
      
      @current_size -= 1
      @store.pop
    else
      nil
    end
  end
  
  def push(element)
    if @current_size < @limit_size
      
      @current_size += 1
      @store.push(element)
    else
      nil
    end
    
  end
  
  def size
    @current_size
  end
  
  def look
    @store
  end
  
  private
  
  def full?
    @current_size >= @limit_size
  end
  
  def empty?
    @current_size == 0
  end
end


stack = Stack.new(5)

p stack.push(2)
p stack.push(23)
p stack.push(26)
p stack.look()
p stack.pop()
p stack.push(27)
p stack.pop()
p stack.look()
p stack.pop()
p stack.pop()
p stack.pop()
p stack.pop()
p stack.pop()
p stack.pop()
p stack.pop()
p stack.look()
p stack.size()
p stack.push(23)
p stack.push(26)
p stack.size()
p stack.push(231)
p stack.push(262)
p stack.push(234)
p stack.push(265)
p stack.push(233)
p stack.push(269)
p stack.size()
p stack.look()

# [ylee@ylee-asus ruby_exercise]$ ruby stack.rb 
# "Store size is 0"
# [2]
# [2, 23]
# [2, 23, 26]
# [2, 23, 26]
# 26
# [2, 23, 27]
# 27
# [2, 23]
# 23
# 2
# nil
# nil
# nil
# nil
# nil
# []
# 0
# [23]
# [23, 26]
# 2
# [23, 26, 231]
# [23, 26, 231, 262]
# [23, 26, 231, 262, 234]
# nil
# nil
# nil
# 5
# [23, 26, 231, 262, 234]
# [ylee@ylee-asus ruby_exercise]$ 

