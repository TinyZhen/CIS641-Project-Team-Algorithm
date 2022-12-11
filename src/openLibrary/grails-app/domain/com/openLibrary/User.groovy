package com.openLibrary

class User {

    String username
    String password
    boolean enabled

    static constraints = {
        username blank: false , nullable: false
        password blank: false , nullable: false
        enabled blank: false , nullable: false
    }
}
