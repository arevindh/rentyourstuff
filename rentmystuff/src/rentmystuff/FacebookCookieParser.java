package rentmystuff;

import javax.servlet.http.*;
import com.google.appengine.repackaged.com.google.common.util.Base64;
//import com.google.appengine.api.datastore.Entity;
import com.google.gson.*;


import javax.crypto.*;
import javax.crypto.spec.*;
@SuppressWarnings("serial")
public class FacebookCookieParser {

	// return the fb user in the cookie.
	Cookie FbCookie;
	JsonParser Parser;
	String FacebookSecretKey;
	String FacebookAppId;
	public FacebookCookieParser(Cookie FbCookie, String FacebookSecretKey, String FacebookAppId) {
		this.FbCookie = FbCookie;
		this.FacebookSecretKey = FacebookSecretKey;
		this.FacebookAppId = FacebookAppId;
		Parser = new JsonParser();
	}
	public String getFBUserFromCookie()
	        throws Exception {

	    if (FbCookie == null)
	        return null;

	    // gets cookie value
	    String FbCookieValue = FbCookie.getValue();

	    // splits it.
	    String[] stringArgs = FbCookieValue.split("\\.");
	    String encodedPayload = stringArgs[1];

	    String payload = base64UrlDecode(encodedPayload);

	    // gets the js object from the cookie
		JsonObject data = Parser.parse(payload).getAsJsonObject();

	    return data.get("user_id").getAsString();

	}

	public boolean ValidateFbCookie()
	        throws Exception {

	    // gets cookie information
	    String FbCookieValue = FbCookie.getValue();

	    String[] stringArgs = FbCookieValue.split("\\.");
	    String encodedSignature = stringArgs[0];
	    String encodedPayload = stringArgs[1];

	    //decode
	    System.err.println("FbCookieValue:"+FbCookieValue);
	    System.err.println("EncodedSignature:"+encodedSignature);
	    System.err.println("EncodedPayload:"+encodedPayload);
	    System.err.println("This should come! abrakadabra");
	    String sig = base64UrlDecode(encodedSignature);
	    String payload = base64UrlDecode(encodedPayload);

	    // gets the js object from the cookie
	    JsonObject data = Parser.parse(payload).getAsJsonObject();

	    if (data.get("algorithm").getAsString() != "HMAC-SHA256") {
	        return false;
	    }

	    SecretKey key = new SecretKeySpec(
	            FacebookSecretKey.getBytes(),
	            "hmacSHA256");

	    Mac hmacSha256 = Mac.getInstance("hmacSHA256");
	    hmacSha256.init(key);
	    // decode the info.
	    byte[] mac = hmacSha256.doFinal(encodedPayload.getBytes());

	    String expectedSig = new String(mac);

	    // compare if the spected sig is the same than in the cookie.
	    return expectedSig.equals(sig);

	}

	private String base64UrlDecode(String input) throws Exception {
	    String result = null;
	    //Base64 decoder = new Base64(true);
	    byte[] decodedBytes = Base64.decode(input);
	    result = new String(decodedBytes);
	    return result;
	}

	public static Cookie getFbCookie(HttpServletRequest request, String ClientID) {
	    Cookie[] cookies = request.getCookies();

	    if (cookies == null)
	        return null;

	    Cookie FbCookie = null;

	    for (Cookie c : cookies) {
	        if (c.getName().equals(
	                "fbsr_" + ClientID)) {
	            FbCookie = c;
	        }
	    }

	    return FbCookie;
	}


}
