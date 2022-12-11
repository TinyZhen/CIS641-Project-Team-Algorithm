package openlibrary

import com.BookWrapper
import com.openLibrary.Review
import grails.converters.JSON
import com.openLibrary.UserBookList
import grails.gorm.transactions.Transactional

import java.text.SimpleDateFormat

import static java.util.Calendar.*

@Transactional
class BookService {

    def APIService

    def getFormattedBookData(JSON apiResult, moreInformation) {
        def returnData
        def rawData = apiResult as String
        def newJSON = JSON.parse(rawData)
        def moreInfo = JSON.parse(moreInformation as String)
        if (newJSON) {
            def isbn = moreInfo?.keySet()?.getAt(0)?.replace('ISBN:', '')?.toString()
            def previewUrl = moreInfo?.values()?.getAt(0)?.preview_url
            def previewState = moreInfo?.values()?.getAt(0)?.preview
            def bookId = newJSON?.key?.toString()?.substring(1)
            def bookTitle = newJSON?.title
            def publishedYear = newJSON?.first_publish_date
            def authorKey = newJSON?.authors?.getAt(0)?.author?.key?.substring(1)
            def authorName = APIService.getAuthorNameFromAPI(authorKey)
            def category = newJSON?.subjects?.getAt(0)
            def editionCount = newJSON?.latest_revision
            def bookCover = newJSON?.covers?.getAt(0)?.toString()
            def firstSentence = newJSON?.description?.value
            def review = getBookReviews(bookId)
            returnData = new BookWrapper(isbn, bookId, bookTitle, publishedYear, null, authorName, authorKey, category, editionCount, bookCover, firstSentence, previewUrl, previewState, review)
        }
        return returnData
    }

    def getFormattedData(JSON apiResult) {
        def returnData
        def rawData = apiResult as String
        def newJSON = JSON.parse(rawData)
        def bookData = newJSON?.docs
        if (bookData) {
            returnData = new BookWrapper().build(bookData)
        }
        return returnData
    }

    def getBookReviews(bookId) {
        def bookReviewList = Review?.findAllByBookId(bookId)
        if (bookReviewList) {
            return bookReviewList
        }
        return []
    }

    def saveReview(bookId, userId, description) {
        try {
            def review = new Review()
            review.bookId = bookId
            review.userId = userId
            review.description = description
            def todayDate = new Date()
            SimpleDateFormat formatter = new SimpleDateFormat("MM-dd-yyyy")
            def formattedDate = formatter.format(todayDate)
            review.date = formattedDate?.toString()
            review.save(flush: true, failOnError: true)
            return 200
        } catch (Exception e) {
            e.printStackTrace()
            return 500
        }
    }

    def removeReview(reviewId){
        try{
            def review = Review.findById(reviewId)
            review.delete(flush: true, failOnError: true)
            return 200
        }catch (Exception ex){
            ex.printStackTrace()
            return 500
        }
    }

    def removeBook(bookId, userId){
       try{
           def book = UserBookList.findByBookIdAndUserId(bookId?.toString(), userId?.toString()?.toLong())
           book.delete(flush: true, failOnError: true)
           return 200
       }catch (Exception ex){
           ex.printStackTrace()
           return 500
       }

    }
}
