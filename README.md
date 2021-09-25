# shell-bot

# How to use this Bot For Cloning?

1. Deploy app, If using **Gclone/Fclone** fill the env ``ACCOUNTS_FOLDER_LINK`` (the link must point to accounts.zip) and fill env ``RCLONE_CONFIG_BASE64`` for **Rclone**(service account path must be like ``accounts/1.json``, if want to use service account with rclone)
2. Thats It ! now run ``/run gclone`` or ``/run rclone`` (or even fclone) and enjoy

or

1. Import Repo (private), If using **Rclone** add rclone config(rclone.conf) for rclone in ``.config/rclone`` and add Service Accounts in ``accounts`` folder to use for **Gclone/Fclone**
2. Now deploy to heroku via this **Private repo**
3. Thats It ! now run ``/run gclone`` or ``/run rclone`` (or even fclone) and enjoy

Easy Detailed Tutorial here: https://telegra.ph/ShellBot-Cloning-Tutorial-08-22



# ⚛️ Deploying on Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

This is a fully functional shellrunner [Telegram bot][]. You tell it a
command, it executes it and posts the live output. You can send input to the
command by replying to the output messages.

It's a fairly complex example, because it actually appears to the
command as a terminal, interprets escape sequences and **it will
update messages if their lines get touched**. This means interactive
programs such as wget should work naturally, you should see the
status bar update.

The bot also allows files to be uploaded or downloaded, and also
has a simple text editor available for convenience.

Here's an example of the bot running `git` to clone a repository:

![Basic tasks](http://i.imgur.com/Xxtoe4G.png)

Here's an example of the bot running alsamixer:

![Alsamixer with keypad](http://i.imgur.com/j8aXFLd.png)

This bot demonstrates a great part of [Botgram][]'s API.

**Note:** Due to the tight integration, running this bot on Windows is
currently *not* supported.

## ☂ Deploying on Railway.app

1 - For Direct Deploy,Click on the Below Button

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?template=https%3A%2F%2Fgithub.com%2Faishik2005%2Fshell&envs=BOT_TOKEN%2COWNER_ID%2CRCLONE_CONFIG_BASE64%2CCREDENTIALS_LINK%2CACCOUNTS_FOLDER_LINK&BOT_TOKENDesc=Get+your+bot+token+by+talking+to+%40Botfather&OWNER_IDDesc=Your+Telegram+User+ID+%28go+to+%40MissRose_bot+and+type+%2Fid+to+get+your+id%29&RCLONE_CONFIG_BASE64Desc=Encode+your+Rclone+config+using+%28https%3A%2F%2Fwww.base64encode.org%2F%29+and+paste+the+result+from+that+website+in+this+place&CREDENTIALS_LINKDesc=Put+Permanent+download+link%28from+Google+Drive+Index%29+of+your+credentials.json+File&ACCOUNTS_FOLDER_LINKDesc=Put+Permanent+download+link%28from+Google+Drive+Index%29+of+your+accounts.zip+File&referralCode=GD5pqS)

2 - Fill the following Environment Values as per below Instructions:

> BOT_TOKEN = Get your bot token by talking to @Botfather
> 
> OWNER_ID = Your Telegram User ID (go to @MissRose_bot and type /id to get your id)
> 
> RCLONE_CONFIG_BASE64 = Encode your Rclone config using (https://www.base64encode.org/) and paste the result from that website in this place
> 
> CREDENTIALS_LINK = Put Permanent download link(from Google Drive Index) of your credentials.json File
> 
> ACCOUNTS_FOLDER_LINK = Put Permanent download link(from Google Drive Index) of your accounts.zip File

3. Click on Deploy

Now,Wait a little bit.You will see that your app has been deployed to Railway and then you can clone without any Time Limit.<b>Railway does not restart App every 24 hours meaning you can perform long time conusming shell functions without worry of restart </b>

## 🌟 Deploying on Qovery
<p><img src="https://www.eu-startups.com/wp-content/uploads/2021/03/qovery.jpg" alt="Deploy to Railway" /></p>

1.Login to Qovery via Github Account.Fork this Repo.

2.Then create a new Environment followed by new app.Just follow the On-Screen Instructions.

3.Then select Deploy App from Repo and click the Repo in your Account.

4.From settngs of the App scroll down and change Deploy Method from Buildpacks to DockerFile

5.Then go to variables and add the below Environment Variables one by one with proper values.

> BOT_TOKEN = Get your bot token by talking to @Botfather
> 
> OWNER_ID = Your Telegram User ID (go to @MissRose_bot and type /id to get your id)
> 
> RCLONE_CONFIG_BASE64 = Encode your Rclone config using (https://www.base64encode.org/) and paste the result from that website in this place

> CREDENTIALS_LINK = Put Permanent download link(from Google Drive Index) of your credentials.json File
> 
> ACCOUNTS_FOLDER_LINK = Put Permanent download link(from Google Drive Index) of your accounts.zip File
> 

6.Then Click Start App. Click Show Logs

Now,Wait a little bit.You will see that your app has been deployed to Qovery and then you can clone without any Time Limit.<b>Qovery does not restart App every 24 hours meaning you can perform long time conusming shell functions without worry of restart </b>


## Install

First install [node-pty dependencies](https://github.com/Microsoft/node-pty#dependencies). For example, if you're in Ubuntu/Debian:

~~~
sudo apt install -y make python build-essential
~~~

If you're using fedora instead:
```
sudo dnf install -y python
sudo dnf group install -y "C Development Tools and Libraries" 
```

Before using this, you should have obtained an auth token for your bot,
and know your personal user's numeric ID. If you don't know what this
means, check out the [blog post][] for a full step-by-step guide.

~~~
git clone https://github.com/botgram/shell-bot.git && cd shell-bot
npm install
~~~

To start the bot:

~~~
node server
~~~

The first time you run it, it will ask you some questions and create
the configuration file automatically: `config.json`. You can also
write it manually, see `config.example.json`.

When started it will print a `Bot ready.` message when it's up and running.
For convenience, you might want to talk to the BotFather and set the
command list to the contents of `commands.txt`.

## Authorization

When first started, the bot will just accept messages coming from your user.
This is for security reasons: you don't want arbitrary people to issue
commands to your computer!

If you want to allow another user to use the bot, use `/token` and give
that user the resulting link. If you want to use this bot on a group,
`/token` will give you a message to forward into the group.

## Proxy server

shell-bot obeys the `https_proxy` or `all_proxy` environment variable
to use a proxy, and supports HTTP/HTTPS/SOCKS4/SOCKS4A/SOCKS5 proxies.
Examples:

~~~ bash
export https_proxy="http://168.63.76.32:3128"
node server

export https_proxy="socks://127.0.0.1:9050"
node server
~~~

**Warning:** For SOCKS proxies, you need to use an IP address (not a DNS hostname).



[Telegram bot]: https://core.telegram.org/bots
[Botgram]: https://botgram.js.org
[blog post]: https://alba.sh/blog/telegram-shell-bot/
