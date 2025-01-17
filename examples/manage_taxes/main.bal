// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;
import ballerina/io;
import ballerina/oauth2;
import ballerinax/hubspot.crm.commerce.taxes as hstaxes;

configurable string clientId = ?;
configurable string clientSecret = ?;
configurable string refreshToken = ?;

//auth confguration for hubspot
hstaxes:OAuth2RefreshTokenGrantConfig auth = {
    clientId,
    clientSecret,
    refreshToken,
    credentialBearer: oauth2:POST_BODY_BEARER
};

final hstaxes:Client hubspotTaxes = check new ({auth});

public function main() returns error? {

    //Create a new tax
    hstaxes:SimplePublicObjectInputForCreate payload = {
        associations: [],
        properties: {
            "hs_label": "A percentage-based tax of 8.5%",
            "hs_value": "8.5000",
            "hs_type": "PERCENT"
        }
    };

    hstaxes:SimplePublicObject tax = check hubspotTaxes->/.post(payload);

    string taxId = tax.id;
    io:println(`A Tax created with id ${taxId}`);

    //Update the tax properties
    hstaxes:SimplePublicObjectInput newTaxDetails = {
        properties: {
            "hs_label": "A percentage-based tax of 7.5%",
            "hs_value": "7.5000"
        }
    };

    hstaxes:SimplePublicObject updatedTax = check hubspotTaxes->/[taxId].patch(newTaxDetails);

    io:println("Successfully updated the tax properties");
    io:println(updatedTax);

    //Archive the tax
    http:Response response = check hubspotTaxes->/[taxId].delete();

    if response.statusCode == 204 {
        io:println("sucessfully deleted the tax");
    } else {
        io:println("Failed to delete tax");
    }
}
