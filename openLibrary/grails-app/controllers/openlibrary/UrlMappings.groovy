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
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
