class Person {

    var name = ""
}

class BlogPost {

    var fullTitle:String{               // computed property
        // Check that title and author are not nil
        if title != nil && author != nil{
            return title! + " by " + author!.name
        }else if title != nil{
            return title!
        }else{
            return "No Title"
        }
    }

    var title:String?
    var body = "hey"
    var author:Person?
    var numberOfComments = 0

    func addUpCommentCounts(){

        // Do some calculations
        // Arrive at a result

    }

    func addComment(){

        //var myComment = "Some comment"      // variable declared inside function can be accessed only in that function

        print(body)
    }

    func shareArticle(){

        print(body)

    }
}

// properties are variables that are assigned to an object
let myPost = BlogPost()
myPost.title = "Title of post"  

let myPostTwo = BlogPost()
myPostTwo.title = "Another Title"

// computed properties
let author = Person()
author.name = "Chris Ching"

let myPost_2 = BlogPost()
myPost_2.author = author
myPost_2.title = "Learn Swift for Beginners"

print(myPost_2.fullTitle)