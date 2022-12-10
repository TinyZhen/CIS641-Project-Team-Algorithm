package openlibrary

import com.openLibrary.UserBookList
import grails.gorm.transactions.Transactional

@Transactional
class UserService {

    def addBookToList(bookId, userId) {
        try{
            def userBook = new UserBookList()
            userBook.bookId = bookId
            userBook.userId = 1
            userBook.save(flush: true, failOnError: true)
            return 200

        }catch(Exception e){
            e.printStackTrace()
            return 500
        }
    }
}
