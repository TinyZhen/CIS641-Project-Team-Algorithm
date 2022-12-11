package openlibrary

import com.BookWrapper
import com.openLibrary.UserBookList
import grails.converters.JSON
import grails.gorm.transactions.Transactional

@Transactional
class UserService {

    def APIService

    def addBookToList(bookId, userId, isbn) {
        try {
            def userBook = new UserBookList()
            userBook.bookId = bookId
            userBook.userId = userId
            userBook.isbn = isbn
            userBook.save(flush: true, failOnError: true)
            return 200

        } catch (Exception e) {
            e.printStackTrace()
            return 500
        }
    }

    def getUserBook(userId) {
        def userBook = UserBookList.findAllByUserId(userId)
        def resultData = []
        userBook?.each {
            def bookId = it?.bookId
            def isbn = it?.isbn?.toString()
            def apiBook = APIService.getResponseFromAPI(bookId + ".json", 'GET')
            if (apiBook) {
                def parsedData = JSON.parse(apiBook as String)
                resultData.add(new BookWrapper(isbn, bookId, parsedData?.title, null, null, null, null, null, null, parsedData?.covers?.getAt(0)?.toString(), null, null, null, null))
            }
        }
        return resultData
    }


}
