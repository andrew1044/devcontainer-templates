#!/bin/sh

dnf groupinstall -y "Development Tools"

  # Get dev stuff and remove conflicting
dnf groupinstall -y "Development Tools"

dnf remove -y buildah

dnf --refresh update -y

