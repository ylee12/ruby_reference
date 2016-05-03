    OUTER_CONST = 99  
      
    class Const  

        CONST = OUTER_CONST + 1  

        def get_const

          # Constants defined within a class or module 
          # may be accessed anywhere within the class or module.  
          CONST  
        end  

        
    end  
      
    #puts Const.new.get_const  
    #puts Const::CONST  
    #puts ::OUTER_CONST  
    #puts Const::NEW_CONST = 123  