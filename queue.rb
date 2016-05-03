class Queue
  def initialize(size)
    @store = Array.new()
    @limit_size = size
    @current_size = 0
    p "Store size is #{@current_size}"
  end
  
  def dequeue
    if @current_size > 0
      
      @current_size -= 1
      @store.pop
    else
      nil
    end
  end
  
  def enqueue(element)
    if @current_size < @limit_size
      
      @current_size += 1
      @store.unshift(element)
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


queue = Queue.new(5)

p queue.enqueue(2)
p queue.enqueue(23)
p queue.enqueue(26)
p queue.look()
p queue.dequeue()
p queue.enqueue(27)
p queue.dequeue()
p queue.look()
p queue.dequeue()
p queue.dequeue()
p queue.dequeue()
p queue.dequeue()
p queue.dequeue()
p queue.dequeue()
p queue.dequeue()
p queue.look()
p queue.size()
p queue.enqueue(23)
p queue.enqueue(26)
p queue.size()
p queue.enqueue(231)
p queue.enqueue(262)
p queue.enqueue(234)
p queue.enqueue(265)
p queue.enqueue(233)
p queue.enqueue(269)
p queue.size()
p queue.look()


# [ylee@ylee-asus ruby_exercise]$ ruby queue.rb 
# "Store size is 0"
# [2]
# [23, 2]
# [26, 23, 2]
# [26, 23, 2]
# 2
# [27, 26, 23]
# 23
# [27, 26]
# 26
# 27
# nil
# nil
# nil
# nil
# nil
# []
# 0
# [23]
# [26, 23]
# 2
# [231, 26, 23]
# [262, 231, 26, 23]
# [234, 262, 231, 26, 23]
# nil
# nil
# nil
# 5
# [234, 262, 231, 26, 23]
# [ylee@ylee-asus ruby_exercise]$ 
# 