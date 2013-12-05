#!/bin/sh
set -e
cd $HOME
if [ ! -n "$WERCKER_TERMINUS_PANTHEON_EMAIL" ]
then
    fail 'missing email'
fi

if [ ! -n "$WERCKER_TERMINUS_PANTHEON_PASSWORD" ]
then
    fail 'missing password'
fi

if [ ! -n "$WERCKER_TERMINUS_PANTHEON_SITE_UUID" ]
then
    fail 'missing site uuid'
fi

composer create-project pantheon-systems/terminus $HOME/.drush/terminus -s dev --no-dev -n
drush cc drush

drush pauth $WERCKER_TERMINUS_PANTHEON_EMAIL --password=$WERCKER_TERMINUS_PANTHEON_PASSWORD

drush paliases