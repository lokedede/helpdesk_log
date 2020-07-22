This solution mainly made use of Logstash to convert raw logs in to json format. 
With Grox filter from Logstash, it's able to extract the key information required.
However, I gotta admit I wasn't able to calculate the Number of Occurence field. I have the hunch that the Aggregate filter should do the trick but wasn't able to test it out too much with limited time during the weekend.

As for running on Linux with bash or Windows with powershell, my opinion is why not just use docker and forget about the environment differences? Isn't that what DevOps arestriving to achieve?

And Logstash provides an official image on Dockerhub. Extra efforts and time saved from writing the Dockerfile --Hurray!
