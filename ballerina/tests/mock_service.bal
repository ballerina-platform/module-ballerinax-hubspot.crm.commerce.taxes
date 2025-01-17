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

service on new http:Listener(9090) {
    resource function post batch/upsert(@http:Payload BatchInputSimplePublicObjectBatchInputUpsert payload) 
    returns BatchResponseSimplePublicUpsertObject {

        BatchResponseSimplePublicUpsertObject responseBody = {
            completedAt: "2025-01-08T15:04:30.816Z",
            requestedAt: "2025-01-08T15:04:30.816Z",
            startedAt: "2025-01-08T15:04:30.816Z",
            links: {
                "additionalProp1": "string",
                "additionalProp2": "string",
                "additionalProp3": "string"
            },
            results: [
                {
                    createdAt: "2025-01-08T15:04:30.816Z",
                    archived: true,
                    archivedAt: "2025-01-08T15:04:30.816Z",
                    'new: true,
                    propertiesWithHistory: {
                        "additionalProp1": [
                            {
                                "sourceId": "string",
                                "sourceType": "string",
                                "sourceLabel": "string",
                                "updatedByUserId": 0,
                                "value": "string",
                                "timestamp": "2025-01-08T15:04:30.816Z"
                            }
                        ],
                        "additionalProp2": [
                            {
                                "sourceId": "string",
                                "sourceType": "string",
                                "sourceLabel": "string",
                                "updatedByUserId": 0,
                                "value": "string",
                                "timestamp": "2025-01-08T15:04:30.816Z"
                            }
                        ],
                        "additionalProp3": [
                            {
                                "sourceId": "string",
                                "sourceType": "string",
                                "sourceLabel": "string",
                                "updatedByUserId": 0,
                                "value": "string",
                                "timestamp": "2025-01-08T15:04:30.816Z"
                            }
                        ]
                    },
                    id: "395102392355",
                    properties: {
                        "hs_label": "A percentage-based tax of 4.5%",
                        "hs_value": "4.5000",
                        "hs_type": "PERCENT"
                    },
                    updatedAt: "2025-01-08T15:04:30.816Z"
                },
                {
                    createdAt: "2025-01-08T15:04:30.816Z",
                    archived: true,
                    archivedAt: "2025-01-08T15:04:30.816Z",
                    'new: true,
                    propertiesWithHistory: {
                        "additionalProp1": [
                            {
                                "sourceId": "string",
                                "sourceType": "string",
                                "sourceLabel": "string",
                                "updatedByUserId": 0,
                                "value": "string",
                                "timestamp": "2025-01-08T15:04:30.816Z"
                            }
                        ],
                        "additionalProp2": [
                            {
                                "sourceId": "string",
                                "sourceType": "string",
                                "sourceLabel": "string",
                                "updatedByUserId": 0,
                                "value": "string",
                                "timestamp": "2025-01-08T15:04:30.816Z"
                            }
                        ],
                        "additionalProp3": [
                            {
                                "sourceId": "string",
                                "sourceType": "string",
                                "sourceLabel": "string",
                                "updatedByUserId": 0,
                                "value": "string",
                                "timestamp": "2025-01-08T15:04:30.816Z"
                            }
                        ]
                    },
                    id: "395102392356",
                    properties: {
                        "hs_label": "A percentage-based tax of 4.75%",
                        "hs_value": "4.7500",
                        "hs_type": "PERCENT"
                    },
                    updatedAt: "2025-01-08T15:04:30.816Z"
                }
            ],
            "status": "COMPLETE"
        };

        return responseBody;
    }

    resource function get .(map<string|string[]> headers = {}) 
    returns CollectionResponseSimplePublicObjectWithAssociationsForwardPaging {

        CollectionResponseSimplePublicObjectWithAssociationsForwardPaging response = {
            paging: {
                next: {
                    link: "?after=NTI1Cg%3D%3D",
                    after: "NTI1Cg%3D%3D"
                }
            },
            results: [
                {
                    associations: {
                        "additionalProp1": {
                            "paging": {
                                "next": null,
                                "prev": {
                                    "before": "string",
                                    "link": "string"
                                }
                            },
                            "results": [
                                {
                                    "id": "string",
                                    "type": "string"
                                }
                            ]
                        },
                        "additionalProp2": {
                            "paging": {
                                "next": null,
                                "prev": {
                                    "before": "string",
                                    "link": "string"
                                }
                            },
                            "results": [
                                {
                                    "id": "string",
                                    "type": "string"
                                }
                            ]
                        },
                        "additionalProp3": {
                            "paging": {
                                "next": null,
                                "prev": {
                                    "before": "string",
                                    "link": "string"
                                }
                            },
                            "results": [
                                {
                                    "id": "string",
                                    "type": "string"
                                }
                            ]
                        }
                    },
                    createdAt: "2025-01-09T03:34:58.878Z",
                    archived: true,
                    archivedAt: "2025-01-09T03:34:58.878Z",
                    propertiesWithHistory: {
                        "additionalProp1": [
                            {
                                "sourceId": "string",
                                "sourceType": "string",
                                "sourceLabel": "string",
                                "updatedByUserId": 0,
                                "value": "string",
                                "timestamp": "2025-01-09T03:34:58.878Z"
                            }
                        ],
                        "additionalProp2": [
                            {
                                "sourceId": "string",
                                "sourceType": "string",
                                "sourceLabel": "string",
                                "updatedByUserId": 0,
                                "value": "string",
                                "timestamp": "2025-01-09T03:34:58.878Z"
                            }
                        ],
                        "additionalProp3": [
                            {
                                "sourceId": "string",
                                "sourceType": "string",
                                "sourceLabel": "string",
                                "updatedByUserId": 0,
                                "value": "string",
                                "timestamp": "2025-01-09T03:34:58.878Z"
                            }
                        ]
                    },
                    id: "string",
                    properties: {
                        "hs_type": "string",
                        "hs_value": "string",
                        "hs_label": "string"
                    },
                    updatedAt: "2025-01-09T03:34:58.878Z"
                }
            ]
        };

        return response;
    }
};
