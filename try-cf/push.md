## cf push

In Cloud Foundry, deploying an app is achieved via a cf push. There is nothing special about the app you will be deploying. It is just a simple go application written for training purposes.

Download the app here: https://s3-us-west-2.amazonaws.com/public.artifacts.rscale.io/first-push-app.zip.

Unzip the file and go to the training-app directory in your terminal window.

Now push the application (you need to be in the training-app directory):

  $ cf push first-push -b go_buildpack -m 64M --random-route
Note: You can use cf push --help to see the details of the push command.

Let’s dissect the push command:

first-push is the name of the application in Cloud Foundry. It should be a descriptive name for use by humans, and can be whatever you want.
-b go_buildpack tells Cloud Foundry to use the Go Buildpack to stage the application. You could leave this off and let Cloud Foundry figure it out, but specifying via -b is slightly faster.
-m 64M tells Cloud Foundry to allocate 64MB of memory to the container running the application.
--random-route is used to ensure you don’t have route conflicts with the other Cloud Foundry users. This should only be used for training purposes.
Checking your work
If everything is successful, you should see output for your running application:

name:              first-push
requested state:   started
routes:            first-push-responsible-roan.cfapps.io
last uploaded:     Sun 31 Mar 11:47:05 MDT 2019
stack:             cflinuxfs3
buildpacks:        go

type:            web
instances:       1/1
memory usage:    64M
start command:   ./bin/training-app
     state     since                  cpu    memory     disk      details
#0   running   2019-03-31T17:46:53Z   0.0%   0 of 64M   0 of 1G   
The application has a user interface that shows some details about the application. You can copy the url of your application labeled as a route above and open it in a browser.

Wait, what just happened?
In short, you deployed an app to the internet using a single command. It would have looked the same regardless of the language in which the app was written. The CLI on your machine uploaded the app bits to Cloud Foundry and also provided some information about what should happen. This information includes the defaults of running a single instance with 1G of memory.

Cloud Foundry took your app bits and used a buildpack to create an image with your app plus any necessary runtime dependencies. The resulting image was then used to run your application in a container. Once your app was running, Cloud Foundry began to automatically route traffic to it (hence your ability to access it in a browser).

And what didn’t happen?

You didn’t build an image with a tool like Docker (though Cloud Foundry supports Docker, too). You didn’t install any runtimes or manipulate any file systems. You didn’t manullay provision any resources like compute and storage. You didn’t create and deploy a load balancer or reserve any ports. You didn’t update routing tables or do any health checks. You just typed cf push. Pretty cool, right?

Now that we have an app running, let’s provision a database for it to use.