module Reload

# package code goes here

println("\x1b[34m\ ")
print("Reload.jl loaded")
println("\x1b[00m\ ")

function watch(filename)

    start = stat(filename).mtime

    while start === stat(filename).mtime

        sleep(1);

    end
    
    eval(parse("try include(\"$(filename)\");catch e; println(\"\x1b[31m\ ERROR\");print(e);println(\"\x1b[00m\ \"); end;start(\"$(filename)\")"))



end 



function start(filename)

    if (isfile(filename) == false) 
        error("No such file: "*filename)
        return 
    end    

    @async (sleep(5); watch(filename))
    
    println("\x1b[34m\ ")
    println("watching $(filename)")
    println("\x1b[00m\ ")

end




end # module
