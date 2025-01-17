# Examples

The `ballerinax/hubspot.crm.commerce.taxes` connector provides practical examples illustrating usage in various scenarios.

1. [Manage Taxes](https://github.com/ballerina-platform/module-ballerinax-hubspot.crm.commerce.taxes/tree/main/examples/manage-taxes/) - see how the Ballerina `hubspot.crm.commerce.taxes` connector can be used to create a tax and manage it through the sales pipeline.
2. [Search Taxes](https://github.com/ballerina-platform/module-ballerinax-hubspot.crm.commerce.taxes/tree/main/examples/search_taxes/) - see how the Ballerina `hubspot.crm.commerce.taxes` connector can be used to search for taxes using properties and create a batch of taxes

## Prerequisites

1. Generate hubspot credentials to authenticate the connector as described in the [setup guide](https://raw.githubusercontent.com/ballerina-platform/module-ballerinax-hubspot.crm.commerce.taxes/main/README.md#setup-guide).

2. For each example, create a `Config.toml` file the related configuration. Here's an example of how your `Config.toml `file should look:
    ```toml
    clientId = "<Client ID>"
    clientSecret = "<Client Secret>"
    refreshToken = "<Access Token>"
    ```

## Running an example

Execute the following commands to build an example from the source:

* To build an example:

    ```bash
    bal build
    ```

* To run an example:

    ```bash
    bal run
    ```

## Building the examples with the local module

**Warning**: Due to the absence of support for reading local repositories for single Ballerina files, the Bala of the module is manually written to the central repository as a workaround. Consequently, the bash script may modify your local Ballerina repositories.

Execute the following commands to build all the examples against the changes you have made to the module locally:

* To build all the examples:

    ```bash
    ./build.sh build
    ```

* To run all the examples:

    ```bash
    ./build.sh run
    ```
