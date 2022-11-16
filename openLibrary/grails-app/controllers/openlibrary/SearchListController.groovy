package openlibrary

class SearchListController {

    def APIService

    def index() {
        def queryParam = APIService.getQueryParameter(params?.searchKey?.toString())
        //TODO: Need to change this request method hardcoded value
        def searchData = APIService.getResponseFromAPI(queryParam, 'GET')
        render view: 'index', model: [data: searchData]
    }

}
