class BlogPost {

    var title = ""
    var body = ""
    var author = ""
    var numberOfComments = 0

    func addComment(){
        numberOfComments += 1
    }
}

let myPost = BlogPost()
myPost.title = "Hello Playground"
myPost.author = "Chris Ching"
myPost.body = "Hello"
myPost.addComment()
print(myPost.numberOfComments)          // print out 1

let mySecondPost = BlogPost()
mySecondPost.title = "Goodbye Playground"
mySecondPost.author = "John Travolta"
mySecondPost.body = "Hello"
print(mySecondPost.numberOfComments)    // print out 0