package openlibrary

import com.BookWrapper
import grails.converters.JSON
import grails.gorm.transactions.Transactional
import org.grails.web.json.JSONElement

@Transactional
class APIService {
    private static final String openLibraryUrl = 'https://openlibrary.org/'

    /**
     * Gets value from the Open Library API based on the parameters sent
     *
     * @param query - query to sent to the API
     * @param requestMethod - the method GET or POST
     * @return JSON value
     */
    
    def BookService

    def getResponseFromAPI(String query, String requestMethod) {
        try {
            def StringURL = openLibraryUrl + query
            URL url = new URL(StringURL)
            HttpURLConnection httpClient = (HttpURLConnection) url.openConnection();

            httpClient.setRequestMethod(requestMethod);
            httpClient.setRequestProperty("Content-Type", "application/json");

            //read values from the input-stream
            BufferedReader br = new BufferedReader(new InputStreamReader(httpClient.getInputStream()));
            String inputLine;
            StringBuffer response = new StringBuffer();

            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            JSONElement jSONElement = JSON.parse(new StringReader(response.toString()))

            return jSONElement as JSON

        } catch (Exception ex) {
            ex.stackTrace()
            return null
        }

    }

    def getQueryParameter(String query) {
        def queryString = query.trim().replaceAll(' ', '+')
        //Doing page one just because we don't need all of it
        return 'search.json?q=' + queryString + '&mode=ebooks&page=1'
    }

    def getQueryForBook(String isbn){
        return 'api/books?bibkeys=ISBN:'+isbn+'&format=json'
    }

    def getAuthorNameFromAPI(authorKey) {
        def newAuthorkey = authorKey?.toString()+ '.json'
        def apiResponse = getResponseFromAPI(newAuthorkey, 'GET')

        if (apiResponse) {
            def parsedResponse = JSON.parse(apiResponse as String)
            return parsedResponse?.personal_name
        }

        return 'None'
    }

}
