if [[ -n $RCLONE_CONFIG_BASE64 ]]; then
	echo "RClone Config Installation in Progress"
      mkdir -p /usr/src/app/.config/rclone
      mkdir -p /usr/src/app/root/.config/rclone
      mkdir -p /root/.config/rclone
        aria2c $RCLONE_CONFIG_BASE64 && set /usr/src/app/.config/rclone/rclone.conf && set /usr/src/app/root/.config/rclone/rclone.conf && set /root/.config/rclone/rclone.conf
fi

if [[ -n $BOT_TOKEN && -n $OWNER_ID ]]; then
	echo "Bot token and owner ID detected"
	python3 config.py
fi

if [[ -n $CREDENTIALS_LINK ]]; then
	echo "credentials.json detected"
    aria2c $CREDENTIALS_LINK && drivedl set /usr/src/app/credentials.json
fi

if [[ -n $ACCOUNTS_FOLDER_LINK ]]; then
	echo "accounts.zip detected"
    aria2c $ACCOUNTS_FOLDER_LINK && unzip accounts.zip -d accounts && rm *.zip
fi

echo "SETUP COMPLETED"

node server
