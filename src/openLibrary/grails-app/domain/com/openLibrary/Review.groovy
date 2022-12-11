package com.openLibrary

class Review {

    String bookId
    int userId
    String description
    String date

    static constraints = {
        bookId blank: false , nullable: false
        userId blank: false , nullable: false
        description blank: false , nullable: false
        date blank: false , nullable: false
    }
}
