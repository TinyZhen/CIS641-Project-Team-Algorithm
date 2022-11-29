package openlibrary

class SearchListController {

    def APIService

    def index() {
        def resultData
        if (params?.searchKey) {
            def queryParam = APIService.getQueryParameter(params?.searchKey?.toString())
            //TODO: Need to change this request method hardcoded value
            def rawSearchedData = APIService.getResponseFromAPI(queryParam, 'GET')
            resultData = APIService.getFormattedData(rawSearchedData)
        }

        render view: 'index', model: [bookData: resultData, searchedKey: params?.searchKey]
    }

}
