package openlibrary

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'homePage' , action: 'index')
        "/searchList"(controller: 'SearchList', action: 'index')
        "/searchList/result"(controller: 'result',action: 'index')
        "/login"(controller: 'login',action: 'index')
        "/signup"(controller: 'signUp',action: 'index')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
