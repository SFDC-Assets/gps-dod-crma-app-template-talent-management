#!/bin/bash
#
#  Creates a new scratch org and populates it with sample data.
#
#  Copyright (c) 2021-2023, salesforce.com, inc.
#  All rights reserved.
#  SPDX-License-Identifier: BSD-3-Clause
#  For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
#
#  Contact: dnava@salesforce.com

readonly orgAlias=$(jq --raw-output .defaultusername < .sfdx/sfdx-config.json) || {
    echo "Make sure that \"jq\" is installed and that \"defaultusername\" is defined in .sfdx/sfdx-config.json." >&2
    exit 1
}
readonly devHubUserName=$(jq --raw-output .defaultdevhubusername < .sfdx/sfdx-config.json) || {
    echo "Make sure that \"jq\" is installed and that \"defaultdevhubusername\" is defined in .sfdx/sfdx-config.json." >&2
    exit 1
}

echo "*** Creating scratch org ..."
sfdx org create scratch \
    --definition-file config/project-scratch-def.json \
    --no-namespace \
    --target-dev-hub "$devHubUserName" \
    --set-default \
    --alias "$orgAlias" \
    --duration-days 30 || exit 1
echo "*** Pushing metadata to scratch org ..."
sfdx project deploy start || exit 1
echo "*** Generating password for your user ..."
sfdx force user password generate
echo "*** Setting time zone for your user ..."
sfdx data update record --sobject User --where "Name='User User'" --values "TimeZoneSidKey='America/New_York'"
echo "*** Enabling debug mode for your user  ..."
sfdx data update record --sobject User --where "Name='User User'" --values "UserPreferencesUserDebugModePref='true'"
echo "*** Opening scratch org ..."
sfdx org open