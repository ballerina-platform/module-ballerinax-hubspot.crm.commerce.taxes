import ballerina/http;
import ballerina/io;

listener http:Listener httpListener = new (9090);

http:Service mockService = service object {
    resource function post batch/upsert(@http:Payload BatchInputSimplePublicObjectBatchInputUpsert payload) returns BatchResponseSimplePublicUpsertObject {

        BatchResponseSimplePublicUpsertObject responseBody = {

            "completedAt": "2025-01-08T15:04:30.816Z",
            "requestedAt": "2025-01-08T15:04:30.816Z",
            "startedAt": "2025-01-08T15:04:30.816Z",
            "links": {
                "additionalProp1": "string",
                "additionalProp2": "string",
                "additionalProp3": "string"
            },
            "results": [
                {
                    "createdAt": "2025-01-08T15:04:30.816Z",
                    "archived": true,
                    "archivedAt": "2025-01-08T15:04:30.816Z",
                    "new": true,
                    "propertiesWithHistory": {
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
                    "id": "395102392355",
                    "properties": {
                        "hs_label": "A percentage-based tax of 4.5%",
                        "hs_value": "4.5000",
                        "hs_type": "PERCENT"
                    },
                    "updatedAt": "2025-01-08T15:04:30.816Z"
                },
                {
                    "createdAt": "2025-01-08T15:04:30.816Z",
                    "archived": true,
                    "archivedAt": "2025-01-08T15:04:30.816Z",
                    "new": true,
                    "propertiesWithHistory": {
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
                    "id": "395102392356",
                    "properties": {
                        "hs_label": "A percentage-based tax of 4.75%",
                        "hs_value": "4.7500",
                        "hs_type": "PERCENT"
                    },
                    "updatedAt": "2025-01-08T15:04:30.816Z"
                }
            ],
            "status": "COMPLETE"
        };

        return responseBody;
    }

    resource function get .(map<string|string[]> headers = {}) returns CollectionResponseSimplePublicObjectWithAssociationsForwardPaging {

        CollectionResponseSimplePublicObjectWithAssociationsForwardPaging response = {
            "paging": {
                "next": {
                    "link": "?after=NTI1Cg%3D%3D",
                    "after": "NTI1Cg%3D%3D"
                }
            },
            "results": [
                {
                    "associations": {
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
                    "createdAt": "2025-01-09T03:34:58.878Z",
                    "archived": true,
                    "archivedAt": "2025-01-09T03:34:58.878Z",
                    "propertiesWithHistory": {
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
                    "id": "string",
                    "properties": {
                        "hs_type": "string",
                        "hs_value": "string",
                        "hs_label": "string"
                    },
                    "updatedAt": "2025-01-09T03:34:58.878Z"
                }
            ]
        };

        return response;
    }
};

function init() returns error? {

    if isLiveServer {
        io:println("This is a live server. Mock service will not be started.");
        return;
    }
    io:println("Starting mock service for Hubspot CRM commerce taxes");
    check httpListener.attach(mockService, "/");
    check httpListener.'start();
}
