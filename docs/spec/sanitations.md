_Author_:  @MohamedAathif2001 \
_Created_: 2024/12/17 \
_Updated_: 2025/01/10 \
_Edition_: Swan Lake

# Sanitation for OpenAPI specification

This document records the sanitation done on top of the official OpenAPI specification from HubSpot CRM Commerce Taxes. 
The OpenAPI specification is obtained from [Taxes OpenAPI](https://github.com/HubSpot/HubSpot-public-api-spec-collection/blob/main/PublicApiSpecs/CRM/Taxes/Rollouts/424/v3/taxes.json).
These changes are done in order to improve the overall usability, and as workarounds for some known language limitations.

1. Change the `date-time` type mentioned in taxes.json to `datetime`:

    * Reason: Removing hyphenated type names like date-time improves readability and eliminates potential parsing complexities in the language's syntax and using date-time gives warnings at the build stage.

2. Change the url property of the servers object:

    * Original: `https://api.hubapi.com`
    * Updated: `https://api.hubapi.com/crm/v3/objects/taxes`
    * Reason: This change is made to ensure that    all API paths are relative to the versioned base URL (crm/v3/objects/taxes), which improves the consistency and usability of the APIs.

3. Update API Paths:

    * Original: `/crm/v3/objects/taxes`
    * Updated: `/`
    * Reason: This modification simplifies the API paths, making them shorter and more readable. It also centralizes the versioning to the base URL, which is a common best practice.

## OpenAPI cli command

The following command was used to generate the Ballerina client from the OpenAPI specification. The command should be executed from the repository root directory.

```bash
bal openapi -i docs/spec/taxes.json --mode client --license docs/license.txt -o ballerina
```
Note: The license year is hardcoded to 2024, change if necessary.
