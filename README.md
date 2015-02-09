# docker-postfix-example

This is NOT a postfix setvice in a box example. It is example of how you can use postfix inside your container to send email from your app or for cron to run error reports.

## Lets play
Checkout the project
```bash
git clone git@github.com:satyrius/docker-postfix-example.git
```
Build an image
```bash
docker build -t postfix-example .
```
Run new container (imagine that you run any your app container)
```bash
docker run -d --name=postfix postfix-example
```
And now you can use sendmail inside
```bash
docker exec -it postfix /bin/bash -c 'echo hello world | sendmail your-email@example.com'
```
Check your inbox and spam folder. Thats it.
```bash
docker stop postfix && docker rm postfix
```
