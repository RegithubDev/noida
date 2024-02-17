<!DOCTYPE html>
<html>
  <head>
  <meta name="google-signin-client_id" content="180023549420-57imk7usicj28m4489imvf0spmk3v7l7.apps.googleusercontent.com">
  	<script src="/reirm/resources/js/jQuery-v.3.5.min.js"  ></script>
    <script src="https://accounts.google.com/gsi/client" onload="initClient()" async defer></script>
  </head>
  <body>
    <script>
 
      var client;
      var access_token;

      function initClient() {
    	  
        client = google.accounts.oauth2.initTokenClient({
          client_id: '180023549420-57imk7usicj28m4489imvf0spmk3v7l7.apps.googleusercontent.com',
          scope: 'https://www.googleapis.com/auth/calendar.readonly \
                  https://www.googleapis.com/auth/contacts.readonly',
          callback: (tokenResponse) => {
            access_token = tokenResponse.access_token;
          },
        });
      }
    	function decodeJwtResponse(token) {
            let base64Url = token.split('.')[1]
            let base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
            let jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
                return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
            }).join(''));
            return JSON.parse(jsonPayload)
        }

        let responsePayload;
        
    	window.handleCredentialResponse = (response) => {
    		  // decodeJwtResponse() is a custom function defined by you
    		  // to decode the credential response.
    		  responsePayload = decodeJwtResponse(response.credential);

    		  console.log("ID: " + responsePayload.sub);
    		  console.log('Full Name: ' + responsePayload.name);
    		  console.log('Given Name: ' + responsePayload.given_name);
    		  console.log('Family Name: ' + responsePayload.family_name);
    		  console.log("Image URL: " + responsePayload.picture);
    		  console.log("Email: " + responsePayload.email);
    		}
    </script>
    <h1>Google Identity Services Authorization Token model</h1>
<div id="g_id_onload"
     data-client_id="180023549420-57imk7usicj28m4489imvf0spmk3v7l7.apps.googleusercontent.com"
     data-context="signin"
     data-ux_mode="popup"
     data-callback="handleCredentialResponse"
     data-nonce=""
     data-auto_select="true"
     data-itp_support="true">
</div>

<div class="g_id_signin"
     data-type="standard"
     data-shape="rectangular"
     data-theme="outline"
     data-text="signin_with"
     data-size="large"
     data-logo_alignment="left">
</div>
    <button onclick="getToken();" class="g-signin2" data-onsuccess="google_auth.onSignIn"> signin</button><br><br>
    <button onclick="loadCalendar();">Load Calendar</button><br><br>
    <button onclick="revokeToken();">Revoke token</button>
  </body>
</html>