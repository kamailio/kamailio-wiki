# OBS Packages Details

## Overview

Most of the Kamailio RPM packages for various Linux distributions are
generated using OpenSuse Build Service. To install Kamailio using
**yum**, go to the provided download link for your operating system, get
the **.repo** file and save it in **/etc/yum.repos.d/** directory.

For example, to add the repository for Kamailio v5.3.x on a CentOS 7,
do:

    cd /etc/yum.repos.d/
    wget http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/CentOS_7/home:kamailio:v5.3.x-rpms.repo

The content of the **.repo** file (in this case
**home:kamailio:v5.3.x-rpms.repo**), looks like:

    [home_kamailio_v5.3.x-rpms]
    name=RPM Packages for Kamailio v5.3.x (CentOS_7)
    type=rpm-md
    baseurl=http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/CentOS_7/
    gpgcheck=1
    gpgkey=http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/CentOS_7/repodata/repomd.xml.key
    enabled=1

## Kamailio 5.3.x

The RPM packages are built on OpenSUSE Build Service for CentOS 6 and 7,
Fedora 27, 28 and 29, RedHat 6 and 7, OpenSUSE 42.2 and 42.3, on i586
and x86_64 architectures.

The OpenSuse build service project is available at:

- <https://build.opensuse.org/project/show/home:kamailio:v5.3.x-rpms>

Download links specific per distribution are:

- <http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/CentOS_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/CentOS_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/Fedora_29/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/Fedora_30/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/RHEL_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/RHEL_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/openSUSE_Leap_42.2/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.3.x-rpms/openSUSE_Leap_42.3/>

## Kamailio 5.2.x

The RPM packages are built on OpenSUSE Build Service for CentOS 6 and 7,
Fedora 27, 28 and 29, RedHat 6 and 7, OpenSUSE 42.2 and 42.3, on i586
and x86_64 architectures.

The OpenSuse build service project is available at:

- <https://build.opensuse.org/project/show/home:kamailio:v5.2.x-rpms>

Download links specific per distribution are:

- <http://download.opensuse.org/repositories/home:/kamailio:/v5.2.x-rpms/CentOS_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.2.x-rpms/CentOS_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.2.x-rpms/Fedora_27/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.2.x-rpms/Fedora_28/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.2.x-rpms/Fedora_29/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.2.x-rpms/RHEL_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.2.x-rpms/RHEL_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.2.x-rpms/openSUSE_Leap_42.2/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.2.x-rpms/openSUSE_Leap_42.3/>

## Kamailio 5.1.x

The RPM packages are built on OpenSUSE Build Service for CentOS 6 and 7,
Fedora 25, 26 and 27, RedHat 6 and 7, OpenSUSE 42.2 and 42.3, on i586
and x86_64 architectures.

The OpenSuse build service project is available at:

- <https://build.opensuse.org/project/show/home:kamailio:v5.1.x-rpms>

Download links specific per distribution are:

- <http://download.opensuse.org/repositories/home:/kamailio:/v5.1.x-rpms/CentOS_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.1.x-rpms/CentOS_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.1.x-rpms/Fedora_25/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.1.x-rpms/Fedora_26/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.1.x-rpms/Fedora_27/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.1.x-rpms/RHEL_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.1.x-rpms/RHEL_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.1.x-rpms/openSUSE_Leap_42.2/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.1.x-rpms/openSUSE_Leap_42.3/>

## Kamailio 5.0.x

The RPM packages are built on OpenSUSE Build Service for CentOS 6 and 7,
Fedora 25 and 26, RedHat 6 and 7, OpenSUSE 42.2 and 42.3, on i586 and
x86_64 architectures.

The OpenSuse build service project is available at:

- <https://build.opensuse.org/project/show/home:kamailio:v5.0.x-rpms>

Download links specific per distribution are:

- <http://download.opensuse.org/repositories/home:/kamailio:/v5.0.x-rpms/CentOS_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.0.x-rpms/CentOS_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.0.x-rpms/Fedora_25/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.0.x-rpms/Fedora_26/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.0.x-rpms/RHEL_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.0.x-rpms/RHEL_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.0.x-rpms/openSUSE_Leap_42.2/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v5.0.x-rpms/openSUSE_Leap_42.3/>

## Kamailio 4.4.x

The RPM packages are built on OpenSUSE Build Service for CentOS 5, 6 and
7, Fedora 22 and 23, RedHat 5, 6 and 7, OpenSUSE 13.1 and 13.2, on i586
and x86_64 architectures.

A mirror (not in real time) of the packages is hosted by:

- <http://rpm.kamailio.org>

The OpenSuse build service project is available at:

- <https://build.opensuse.org/project/show/home:kamailio:v4.4.x-rpms>

Download links specific per distribution are:

- <http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/CentOS_5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/CentOS_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/CentOS_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/Fedora_22/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/Fedora_23/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/RHEL_5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/RHEL_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/RHEL_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/openSUSE_13.1/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.4.x-rpms/openSUSE_13.2/>

## Kamailio 4.3.x

The RPM packages are built on OpenSUSE Build Service for CentOS 5, 6 and
7, Fedora 20 and 21, RedHat 5, 6 and 7, OpenSUSE 13.1 and 13.2, on i586
and x86_64 architectures.

A mirror (not in real time) of the packages is hosted by:

- <http://rpm.kamailio.org>

The OpenSuse build service project is available at:

- <https://build.opensuse.org/project/show/home:kamailio:v4.3.x-rpms>

Download links specific per distribution are:

- <http://download.opensuse.org/repositories/home:/kamailio:/v4.3.x-rpms/CentOS_5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.3.x-rpms/CentOS_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.3.x-rpms/CentOS_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.3.x-rpms/Fedora_20/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.3.x-rpms/Fedora_21/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.3.x-rpms/RHEL_5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.3.x-rpms/RHEL_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.3.x-rpms/RHEL_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.3.x-rpms/openSUSE_13.1/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.3.x-rpms/openSUSE_13.2/>

## Kamailio 4.2.x

The RPM packages are built on OpenSUSE Build Service for CentOS 5, 6 and
7, Fedora 20 and 21, RedHat 5, 6 and 7, OpenSUSE 13.1 and 13.2, on i586
and x86_64 architectures.

A mirror (not in real time) of the packages is hosted by:

- <http://rpm.kamailio.org>

The OpenSuse build service project is available at:

- <https://build.opensuse.org/project/show/home:kamailio:v4.2.x-rpms>

Download links specific per distribution are:

- <http://download.opensuse.org/repositories/home:/kamailio:/v4.2.x-rpms/CentOS_5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.2.x-rpms/CentOS_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.2.x-rpms/CentOS_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.2.x-rpms/Fedora_20/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.2.x-rpms/Fedora_21/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.2.x-rpms/RHEL_5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.2.x-rpms/RHEL_6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.2.x-rpms/RHEL_7/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.2.x-rpms/openSUSE_13.1/>
- <http://download.opensuse.org/repositories/home:/kamailio:/v4.2.x-rpms/openSUSE_13.2/>

## Kamailio 4.0.x and 4.1.x

The RPM packages are built on OpenSUSE build server for Centos 5.5 and
6, RedHat 5 and 6, Fedora 16, 17, 18 and 19, OpenSuse 12.1, 12.2, 12.3
and 13.1, on i586 and x86_64 architectures.

A mirror of the packages is hosted by:

- <http://rpm.kamailio.org>

The OpenSuse build service project is available at:

- <https://build.opensuse.org/project/show/home:kamailio:telephony>

Download links specific per distribution are:

- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/CentOS_CentOS-5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/CentOS_CentOS-6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/RedHat_RHEL-5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/RedHat_RHEL-6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/Fedora_16/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/Fedora_17/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/Fedora_18/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/Fedora_19/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/openSUSE_11.4/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/openSUSE_12.1/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/openSUSE_12.2/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/openSUSE_12.3/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/openSUSE_13.1/>

### Peter Dunkley's YUM Repository

This is an alternative repository packaging Kamailio for Enterprise
Linux 6 (CentOS/RHEL/similar) i386, x86_64, and Fedora 17 arm (Raspberry
Pi), i386, x86_64.

See details at:

- <http://dl.dropbox.com/u/9300853/yum/index.html>

## Kamailio 3.3.x

The RPM packages are built on OpenSUSE build server for Centos 5.5,
Centos 6, RedHat 5, RedHat 6, Fedora 15, Fedora 16, Fedora 17, OpenSuse
11.4 and OpenSuse 12.1, on i586 and x86_64 architectures.

The build service project is available at:

- <https://build.opensuse.org/package/show?package=kamailio33&project=home%3Akamailio%3Atelephony>

Download links specific per distribution are:

- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/CentOS_CentOS-5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/CentOS_CentOS-6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/RedHat_RHEL-5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/RedHat_RHEL-6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/Fedora_15/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/Fedora_16/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/Fedora_17/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/openSUSE_11.4/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/openSUSE_12.1/>

## Kamailio 3.2.x

The RPM packages are built on OpenSUSE build server for Centos 5.5,
Centos 6, RedHat 5, RedHat 6, Fedora 15, Fedora 16, OpenSuse 11.4 and
OpenSuse 12.1, on i586 and x86_64 architectures.

The build service project is available at:

- <https://build.opensuse.org/package/show?package=kamailio32&project=home%3Akamailio%3Atelephony>

Download links specific per distribution are:

- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/CentOS_CentOS-5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/CentOS_CentOS-6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/RedHat_RHEL-5/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/RedHat_RHEL-6/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/Fedora_15/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/Fedora_16/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/openSUSE_11.4/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony/openSUSE_12.1/>
