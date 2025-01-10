## Hubspot Tax Creator

This use case demonstrates how the Ballerina `hubspot.crm.commerce.taxes` Connector can be utilized to Search for taxes and create a batch of taxes. The example involves a sequence of actions that leverage the Hubspot CRM API v3 to automate the process of creating and updating a sales pipeline

## Prerequisites

### 1. Setup the Hubspot developer account

Refer to the [Setup guide](https://github.com/ballerina-platform/module-ballerinax-hubspot.crm.commerce.taxes/tree/main/README.md#setup-guide) to obtain necessary credentials (client Id, client secret, Refresh tokens).

### 2. Configuration

Create a `Config.toml` file in the example's root directory and, provide your Hubspot account related configurations as follows:

```toml
clientId = "<Client ID>"
clientSecret = "<Client Secret>"
refreshToken = "<Access Token>"
```

## Run the example

Execute the following command to run the example:

```bash
bal run
```