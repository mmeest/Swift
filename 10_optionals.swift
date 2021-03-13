class Person{
    
    var name = ""
}

class BlogPost{
    
    var title:String?               // optional
    var body = "hey"
    var author:Person?              // optional
    var numberOfComments = 0
}

let post = BlogPost()

print(post.body + " hello!")        // prints out: 'hey hello!'

// Optional Binding / unwrapping optional
post.title = "yo"
if let actualTitle = post.title{    // if post has title then assigne it to 'actualTitle'
    print(actualTitle + " salut")   // using optional, prints out: 'yo salut'
}

// forcing to unwrap optional
print(post.title! + " salut")       // can cause error, if there is no value

// Testing for nil
if post.title != nil {          
    // Optional contains value     
    print(post.title! + " salut")
}
if post.title == nil {
    // Optional contains no value
}



