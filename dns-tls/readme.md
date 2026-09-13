



|Name Servers  | Domain Name | IP4 | IP6  |
|--------------|-------------|------|------------------|
|Name Server 1  |ns1.crazydomains.com  | 27.124.125.7 | 2a00:fd80:aaaa:ffff::eeee:c1 |
|Name Server 2  | ns2.crazydomains.com  | 27.124.125.8| 2a00:fd80:aaaa:ffff::eeee:c2 |

|Record Type | Domain Name | IP4 |
|--------------|-------------|------|
| A Record | gardenofrot.tech | 103.67.235.120 |
|          | gardenofrot.tech | 103.67.235.120 |
|          | www.gardenofrot.tech | 103.67.235.120|


# Install Snap
sudo dnf install snapd -y


To enable classic snap support, enter the following to create a symbolic link between /var/lib/snapd/snap and /snap:
```bash
sudo ln -s /var/lib/snapd/snap /snap
```

To test your system, install the hello-world snap and make sure it runs correctly:

```bash
$ sudo snap install hello-world
hello-world 6.3 from Canonical✓ installed
$ hello-world
Hello World!
$ sudo snap remove hello-world
```
# install certbot

Install Certbot
Run this command on the command line on the machine to install Certbot.
```bash
sudo snap install --classic certbot
```

# Prepare the Certbot command
Execute the following instruction on the command line on the machine to ensure that the certbot command can be run.

```bash
sudo ln -s /snap/bin/certbot /usr/bin/certbot
```

# Choose how you'd like to run Certbot
Are you ok with temporarily stopping your website?

Yes, my web server is not currently running on this machine.
Stop your webserver, then run this command to get a certificate. Certbot will temporarily spin up a webserver on your machine.
```bash
sudo certbot certonly --standalone
```


Go to Domain host

https://www.crazydomains.com.au/members/domains/details/27644687

123.243.233.70

https://acme-v02.api.letsencrypt.org/acme/acct/1653813017
