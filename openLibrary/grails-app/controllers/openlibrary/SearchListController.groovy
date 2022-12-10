package openlibrary

class SearchListController {

    def APIService
    def BookService

    def index() {
        def resultData
        if (params?.searchKey) {
            def queryParam = APIService.getQueryParameter(params?.searchKey?.toString())
            def rawSearchedData = APIService.getResponseFromAPI(queryParam, 'GET')
            resultData = BookService.getFormattedData(rawSearchedData)
        }

        render view: 'index', model: [bookData: resultData, searchedKey: params?.searchKey]
    }

    def result() {
        def resultData
        def sub = params?.bookId + ".json"
        if (params?.bookId) {
            def rawSearchedData = APIService.getResponseFromAPI(sub, 'GET')
            def query = APIService.getQueryForBook(params?.isbn?.toString())
            def additionalInformation = APIService.getResponseFromAPI(query, 'GET')
            resultData = BookService.getFormattedBookData(rawSearchedData, additionalInformation)
        }
        render view: 'result', model: [bookData: resultData]
    }
}
