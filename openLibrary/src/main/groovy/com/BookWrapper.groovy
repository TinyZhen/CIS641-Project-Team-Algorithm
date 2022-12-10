package com

import com.openLibrary.Review

class BookWrapper {

    String isbn
    String previewUrl
    String previewState
    String bookId
    String bookTitle
    String publishedYear
    String publishedDate //TODO convert to Date
    String authorName
    String authorKey
    String category //TODO change to
    String firstSentence
    int editionCount
    String bookCover
    List review

    BookWrapper() {}

    BookWrapper(isbn, bookId, bookTitle, publishedYear,publishedDate, authorName, authorKey, category, editionCount, bookCover, firstSentence, previewUrl, previewState, review) {
        this.isbn = isbn
        this.bookId = bookId
        this.bookTitle = bookTitle
        this.publishedYear = publishedYear
        this.publishedDate = publishedDate
        this.authorName = authorName
        this.authorKey = authorKey
        this.category = category
        this.editionCount = editionCount
        this.bookCover = bookCover
        this.firstSentence = firstSentence
        this.previewState = previewState
        this.previewUrl = previewUrl
        this.review = review
    }

    def build(rawData) {
        def list = []
        def limit = 0 //Limiting results to 10
        rawData?.eachWithIndex { it, i ->
            if (limit < 10 && it?.first_sentence || it?.cover_i && it?.isbn) {
                def isbn = it?.isbn?.getAt(0)
                def bookId = it?.key?.toString()?.substring(1)
                def bookTitle = it?.title
                def publishedYear = it?.publish_year ? Integer.parseInt(it?.publish_year?.getAt(0)?.toString()) : 0
                def publishedDate = it?.publish_date ? it?.publish_date?.getAt(0) : null //change this code
                def authorName = it?.author_name ?: 'Not Found'
                def authorKey = it?.author_key ?: null
                def category = it?.subject ? it?.subject?.getAt(0) : 'None'
                def editionCount = it?.edition_count ?: 0
                def bookCover = it?.cover_i ?: 'None' //TODO change this to a default icon
                def firstSentence = it?.first_sentence ?: '...'
                list.add(new BookWrapper(isbn, bookId, bookTitle, publishedYear, publishedDate, authorName, authorKey, category, editionCount, bookCover, firstSentence, null, null, []))
                limit++
            }
        }

        return list
    }

}
