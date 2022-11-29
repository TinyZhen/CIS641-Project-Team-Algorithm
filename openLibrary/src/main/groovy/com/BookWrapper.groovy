package com

class BookWrapper {

    String isbn
    String bookId
    String bookTitle
    int publishedYear
    String publisher
    String publishedDate //TODO convert to Date
    String authorName
    String authorKey
    String category //TODO change to
    String firstSentence
    int editionCount
    int numberOfPage
    String bookCover

    BookWrapper() {}

    BookWrapper(isbn, bookId, bookTitle, publishedYear, publisher, publishedDate, authorName, authorKey, category, editionCount, numberOfPage, bookCover, firstSentence) {
        this.isbn = isbn
        this.bookId = bookId
        this.bookTitle = bookTitle
        this.publishedYear = publishedYear
        this.publisher = publisher
        this.publishedDate = publishedDate
        this.authorName = authorName
        this.authorKey = authorKey
        this.category = category
        this.editionCount = editionCount
        this.numberOfPage = numberOfPage
        this.bookCover = bookCover
        this.firstSentence = firstSentence
    }

    def build(rawData) {
        def list = []
        def limit = 0 //Limiting results to 10
        rawData?.eachWithIndex { it, i ->
            if (limit < 10 && it?.first_sentence || it?.cover_i) {
                def isbn = it?.isbn
                def bookId = it?.key
                def bookTitle = it?.title
                def publishedYear = it?.publish_year ? Integer.parseInt(it?.publish_year?.getAt(0)?.toString()) : 0
                def publisher = it?.publish_year ?: 'Not Found'
                def publishedDate = it?.publish_date ? it?.publish_date?.getAt(0) : null //change this code
                def authorName = it?.author_name ?: 'Not Found'
                def authorKey = it?.author_key ?: null
                def category = it?.subject ? it?.subject?.getAt(0) : 'None'
                def editionCount = it?.edition_count ?: 0
                def numberOfPage = it?.number_of_pages_median ?: 50
                def bookCover = it?.cover_i ?: 'None' //TODO change this to a default icon
                def firstSentence = it?.first_sentence ?: '...'
                list.add(new BookWrapper(isbn, bookId, bookTitle, publishedYear, publisher, publishedDate, authorName, authorKey, category, editionCount, numberOfPage, bookCover, firstSentence))
                limit++
            }
        }

        return list
    }

}
