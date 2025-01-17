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

import ballerina/io;
import ballerina/oauth2;
import ballerinax/hubspot.crm.commerce.taxes;

configurable string clientId = ?;
configurable string clientSecret = ?;
configurable string refreshToken = ?;

//auth confguration for hubspot
taxes:OAuth2RefreshTokenGrantConfig auth = {
    clientId,
    clientSecret,
    refreshToken,
    credentialBearer: oauth2:POST_BODY_BEARER
};

final taxes:Client hubspotTaxes = check new ({auth});

public function main() returns error? {

    //Search for a tax by label
    taxes:PublicObjectSearchRequest payload = {
        sorts: ["hs_value"],
        query: "A percentage-based tax of 8.5%",
        'limit: 10,
        properties: ["hs_label", "hs_value", "hs_type"]
    };

    taxes:CollectionResponseWithTotalSimplePublicObjectForwardPaging response = 
        check hubspotTaxes->/search.post(payload);

    io:println(`total number of taxes found: ${response.results.length()}`);

    //Create 2 taxes at the same time using batch API
    taxes:SimplePublicObjectInputForCreate tax1 = {
        associations: [],
        properties: {
            "hs_label": "A percentage-based tax of 8.5%",
            "hs_value": "8.5000",
            "hs_type": "PERCENT"
        }
    };

    taxes:SimplePublicObjectInputForCreate tax2 = {
        associations: [],
        properties: {
            "hs_label": "A percentage-based tax of 7.5%",
            "hs_value": "7.5000",
            "hs_type": "PERCENT"
        }
    };

    taxes:BatchInputSimplePublicObjectInputForCreate batchInput = {
        inputs: [tax1, tax2]
    };

    taxes:BatchResponseSimplePublicObject|taxes:BatchResponseSimplePublicObjectWithErrors batchResponse = 
        check hubspotTaxes->/batch/create.post(batchInput);

    if response is taxes:BatchResponseSimplePublicObjectWithErrors {
        io:println("Error occured while batch creating taxes");
    }
    else {
        io:println(`Successfully batch created taxes with ids 
        ${batchResponse.results[0].id} 
        ${batchResponse.results[1].id}`);
    }
}
