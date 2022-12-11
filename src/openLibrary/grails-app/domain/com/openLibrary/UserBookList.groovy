package com.openLibrary

class UserBookList {

    String bookId
    String isbn
    int userId

    static constraints = {
        bookId blank: false , nullable: false
        isbn blank: false , nullable: false
        userId blank: false , nullable: false

    }
}
