import UIKit

/*
 Closure
 
closure 1:
{(params: String) -> ReturnType in
    
}
closure 2:
{() -> ReturnType in
    
}
closure 3:
{()
    
}
closure 4:
{ Code }
*/

func sayHello(){
    print("Named Closure 1.")
}

let a: () -> Void = sayHelloClosure( )

//(params) -> (ReturnType)
let sayHelloClosure: () -> () = {() in
    print("Unnamed Closure 1.")
}

sayHelloClosure()

let i = 0
let s = "hello"

func add(a:Int, b:Int) -> Int {
    a + b
}

func execute(codeBlock: () -> ()) -> Void{
    codeBlock()
}

execute(codeBlock: {() in
    print("Unnamed Closure 1.")
})

execute {codeBlock: sayHello)
    
    //cant keep up, not on the board anymore
    //    let arithmetic: ((Int, Int) -> Int)? = a{}
    
    func sayHello2(with name: String?) -> String{
        if let name{
            return "Hello"
        }else{
            return "Hello Guest"
        }
    }
    
    sayHello2(with: nil)
    sayHello2(with: "John")
    func sayHello3(with name: String? = "Guest") -> String{
        return "Hello, \"
    }
