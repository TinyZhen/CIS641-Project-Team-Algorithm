package openlibrary

import com.openLibrary.User
import org.hibernate.Transaction

import javax.transaction.Transactional

class UserController {

    def bookService
    def userService

    def userProfile() {
        def user = User.findById(params?.userId?.toString()?.toLong())
        def userBookList = userService.getUserBook(user?.id)
        render(view: 'userProfile', model: [user: user, userBookList: userBookList, message: params?.message])
    }

    def saveReview() {
        def bookId = params?.bookId?.toString()
        def userId = params?.userId?.toString()?.toLong()
        def description = params?.review
        def responseCode = bookService.saveReview(bookId, userId, description)

        if (responseCode == 200) {
            redirect(controller: "searchList", action: "result", params: [bookId: bookId, isbn: params?.isbn?.toString()])
        } else {

        }

    }

    def addBookToList() {
        def bookId = params?.bookId?.toString()
        def userId = params?.userId?.toString()?.toLong()
        def isbn = params?.isbn?.toString()
        def responseCode = userService.addBookToList(bookId, userId, isbn)
        if (responseCode == 200) {
            redirect(controller: "searchList", action: "result", params: [bookId: bookId, isbn: params?.isbn?.toString()])
        } else {

        }

    }

    @grails.gorm.transactions.Transactional
    def createNewUser() {
        def user, message, responseCode
        try {
            user = User.findByUsername(params?.username?.toString())

            if (user) {
                responseCode = 400
                message = 'Please use a different username as user already exists'
            } else {
                User.createCriteria()
                user = new User()
                user.username = params?.username?.toString()
                user.password = params?.password?.toString()
                user.enabled = true
                user.save(flush: true, failOnError: true)
                responseCode = 200
                message = 'Congratulations! User created!'
            }
            render(view: '/signUp/signUp', model: [message: message, responseCode: responseCode])
        } catch (Exception e) {
            println "e.printStackTrace() = ${e.printStackTrace()}"
            responseCode = 500
            message = 'Server issue! Please try again!'
            render(view: '/signUp/signUp', model: [message: message, responseCode: responseCode])
        }

    }

    def removeBook(){
        def responseCode = bookService.removeBook(params?.bookId, session?.user?.id)
        if (responseCode == 200){
            redirect(controller: "user", action: "userProfile", params: [userId: session?.user?.id])
        }else{
            redirect(controller: "user", action: "userProfile", params: [userId: session?.user?.id, message: 'Unable to delete!'])
        }
    }
}
