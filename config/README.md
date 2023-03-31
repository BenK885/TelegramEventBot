# systemd config (Ubuntu Linux)

To run the Telegram Event Bot as a service in Ubuntu Linux, create the file '/etc/systemd/system/eventbot.service' as root containing:

```shell
[Unit]
Description=Telegram Event Bot
After=network.target

[Service]
Type=simple
User=eventbot
WorkingDirectory=/home/eventbot/eventBot
ExecStart=/usr/bin/yarn start
Restart=always

[Install]
WantedBy=multi-user.target
```

And control the service via the following commands: 

```shell
# Start service
sudo systemctl start eventbot

# Check service status
sudo systemctl status eventbot

# Enable service
sudo systemctl enable eventbot
```



In this configuration file:

  Description is a description of your service.

  After specifies that this service should start after the network target.

  Type specifies that the service is a simple service that runs in the foreground.

  User specifies the user that the service should run as.

  WorkingDirectory specifies the directory where your Node.js service is located.

  ExecStart specifies the command to start your Node.js service. Replace /usr/bin/node with the path to your Node.js binary and index.js with the name of your service's entry file.

  Restart specifies that the service should be automatically restarted if it exits unexpectedly.

  WantedBy specifies which target the service should be started on. In this case, it's the multi-user target.