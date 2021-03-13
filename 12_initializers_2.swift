class Person {

    var name = ""
}

class BlogPost {

    var title:String!
    var body = "hey"
    var author:Person?
    var numberOfComments = 0

    init(){                                     // designated initializer
        title = "My Title"
        author = Person()
    }

    convenience init(customTitle:String){       // convenience initializer
        self.init()
        title = customTitle
    }
}

let post = BlogPost(customTitle: "A Custom Title")

// Check if there's a value inside the optional first
if let actualTitle = post.title{

}