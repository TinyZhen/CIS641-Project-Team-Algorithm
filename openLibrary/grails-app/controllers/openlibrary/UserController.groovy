package openlibrary

class UserController {

    def bookService
    def userService

    def index() {}

    def saveReview() {
        def bookId = params?.bookId?.toString()
        def userId = params?.userId?.toString()?.toLong()
        def description = params?.review
        def responseCode = bookService.saveReview(bookId, userId, description)

        if (responseCode == 200) {
            redirect(controller: "searchList", action: "result", params: [bookId: bookId, isbn:params?.isbn?.toString()])
        } else {

        }

    }

    def addBookToList(){
        def bookId = params?.bookId?.toString()
        def userId = params?.userId?.toString()?.toLong()
        def responseCode = userService.addBookToList(bookId, userId)
        if (responseCode == 200) {
            redirect(controller: "searchList", action: "result", params: [bookId: bookId, isbn:params?.isbn?.toString()])
        } else {

        }

    }
}
