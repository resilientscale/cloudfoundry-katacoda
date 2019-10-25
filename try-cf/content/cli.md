## The CLI

The CLI, or Command Line Interface, is the tool you will use to interact with Cloud Foundry. The CLI runs in a terminal window and makes REST calls to the Cloud Foundry API. The CLI has been preinstalled in the terminal window. 

You can verify this by checking the version:

`cf version`{{execute}}

## Help

The CLI is a self-documenting tool. For example, you can run:

* `cf help`{{execute}} to see a list of the most commonly used commands
* `cf help -a`{{execute}} to see a list of all the available commands
* `cf <command> --help` to see details on using a specific command

## Logging in

We have already logged you into a Cloud Foundry instance. You can see the details of this instance by running: 

`cf target`{{execute}}

Now that you are logged in, you are ready to deploy and application.