import ballerina/io;
import ballerinax/hubspot.crm.commerce.taxes;
import ballerina/oauth2;
import ballerina/http;

configurable string clientId = ?;
configurable string clientSecret = ?;
configurable string refreshToken = ?;

//auth confguration for hubspot
taxes:OAuth2RefreshTokenGrantConfig auth = {
    clientId: clientId,
    clientSecret: clientSecret,
    refreshToken: refreshToken,
    credentialBearer: oauth2:POST_BODY_BEARER
    };

taxes:ConnectionConfig config = {auth: auth};

final taxes:Client hubspotTaxes = check new taxes:Client(config);

public function main(){

    //Create a new tax
    string taxId = "";

    taxes:SimplePublicObjectInputForCreate payload = {
        "associations": [],
        "properties": {
            "hs_label": "A percentage-based tax of 8.5%",
            "hs_value": "8.5000",
            "hs_type": "PERCENT"
        }
    };

    taxes:SimplePublicObject|error tax = hubspotTaxes->/.post(payload);

    if tax is taxes:SimplePublicObject {
        taxId = tax.id;
        io:println(`A Tax created with id ${taxId}`);
        
    } else {
        io:println("Tax Creation Failed");
        return;
    }

    //Update the tax properties
    taxes:SimplePublicObjectInput newTaxDetails = {
        properties:{
            "hs_label": "A percentage-based tax of 7.5%",
            "hs_value": "7.5000"
        }
    };

    taxes:SimplePublicObject|error updatedTax = hubspotTaxes->/[taxId].patch(payload = newTaxDetails);

     if newTax is taxes:SimplePublicObject {
        io:println("Successfully updated the tax properties");
        io:println(updatedTax);
    } else {
        io:println("Failed to Update the tax");
    }

    //Archive the tax
    var response = hubspotTaxes->/[dealId].delete();

    if response is http:Response && response.statusCode == 204 {
        io:println("sucessfully deleted the tax");
    } else {
        io:println("Failed to delete tax");
    }
}
