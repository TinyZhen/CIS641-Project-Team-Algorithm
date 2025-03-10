package openlibrary

import com.openLibrary.User


class LoginController {

    def index() {
        render(view: '/login/login', model: [message: ''])
    }

    def authenticate() {
        def user = User.findByUsernameAndPassword(params?.username?.toString(), params?.password?.toString())
        if (user) {
            session.user = user
            redirect(controller: "homePage", action: "index")
        } else {
            render(view: '/login/login', model: [message: 'User not found!'])
        }
    }

    def signUp() {
        render(view: '/signUp/signUp', model: [message: ''])
    }

    def logout(){
        session?.user = null
        redirect(controller: "homePage", action: "index")
    }
}
