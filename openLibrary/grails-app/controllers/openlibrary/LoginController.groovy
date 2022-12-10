package openlibrary

import com.openLibrary.User
import org.hibernate.Transaction

import javax.transaction.Transactional

class LoginController {

    def index() {
        render(view: '/login/login')
    }

    def authenticate() {
        def user = User.findByUsernameAndPassword(params?.username?.toString(), params?.password?.toString())
        if (user) {
            session.user = user
            return 200
        } else {
            return 404
        }
    }

    def signUp() {
        render(view: '/signUp/signUp', model: [message: ''])
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
                user.save(flush:true, failOnError: true)
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
}
