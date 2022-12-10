package com.openLibrary

class UserBookList {

    String bookId
    int userId

    static constraints = {
        bookId blank: false , nullable: false
        userId blank: false , nullable: false
    }
}
