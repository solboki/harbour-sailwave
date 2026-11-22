# SPDX-License-Identifier: GPL-3.0-or-later
#
# Additional Sailjail permissions of Sailwave (installed as
# /etc/sailjail/permissions/harbour-sailwave-radio.profile, not in the Jolla
# Store build). Sailplay's car screen opens a session on Sailwave's SDK
# objects (src/sailplaybridge.h) from a temporary name org.sailplay.Client.*;
# the answers are signals sent to that name, which the sandbox allows only
# with these rules (the same as in Sailplay's own SDK applications).
dbus-user.call org.sailplay.Client.*=org.sailplay.Session1.StateChanged@/org/sailplay/v1/*
dbus-user.call org.sailplay.Client.*=org.sailplay.Session1.RequestFinished@/org/sailplay/v1/*
dbus-user.call org.sailplay.Client.*=org.sailplay.Content1.ContentChanged@/org/sailplay/v1/*
dbus-user.call org.sailplay.Client.*=org.freedesktop.DBus.Properties.PropertiesChanged@/org/sailplay/v1/*
