# Terminus

A wercker build step that installs Terminus, the Pantheon command line tool

## Requirements

    - PHP Box
    - Drush

## Options

* `pantheon-email` (required) Pantheon user email address.
* `pantheon-password` (required) Pantheon user password.
* `pantheon-site-uuid` (required) Pantheon site UUID

## Example

    - terminus:
        pantheon-email: $EMAIL
        pantheon-password: $PASSWORD
        pantheon-site-uuid: $UUID

## Contribute

https://github.com/desmondmorris/wercker-step-terminus
