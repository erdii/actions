#!/bin/sh
set -ex

SSH_PATH="$HOME/.ssh"
mkdir "$SSH_PATH"
touch "$SSH_PATH/known_hosts"

echo "$PRIVATE_KEY" > "$SSH_PATH/deploy_key"
echo "$PUBLIC_KEY" > "$SSH_PATH/deploy_key.pub"

chmod 700 "$SSH_PATH"
chmod 600 "$SSH_PATH/known_hosts"
chmod 600 "$SSH_PATH/deploy_key"
chmod 600 "$SSH_PATH/deploy_key.pub"

eval $(ssh-agent)
ssh-add "$SSH_PATH/deploy_key"

rsync -e 'ssh -o StrictHostKeyChecking=no' -c -r -v --delete-after "$IN_PATH" "$USER@$HOST:$OUT_PATH"
