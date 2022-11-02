package openlibrary

import grails.converters.JSON
import org.grails.web.json.JSONElement
import javax.net.ssl.HttpsURLConnection


class URLConnectionController {
//    private static final String openLibraryUrl = "https://openlibrary.org/"
//
//    def getResponse(String query, String method) {
//        def url = openLibraryUrl + query
//        URL obj = new URL(url)
//        HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
//        //Creates an HttpsURLConnection using the URL specified.
//        con.setRequestMethod(method);
//
//        int responseCode = con.getResponseCode();
//        //Gets the status code from an HTTP response message 200 OK 401 Unauthorized
//
//        if (responseCode != 200) {
//            return false
//        }
//
//        BufferedReader br = new BufferedReader(new InputStreamReader(
//                con.getInputStream()));
//        String inputLine;
//        StringBuffer response = new StringBuffer();
//
//        while ((inputLine = br.readLine()) != null) {
//            response.append(inputLine);
//        }
//        br.close();
//
//        JSONElement jSONElement = JSON.parse(new StringReader(response.toString()));
//        //Reads a JSON object or an array structure from an input source.
//
//        System.out.println(jSONElement.toString());
//
//        return jSONElement.getAt("success") as Boolean
//
//    }

}
