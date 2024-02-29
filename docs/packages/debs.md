# DEB Packages

Starting from March 3, 2014 [Sipwise Team](http://www.sipwise.com)
provides a **Kamailio DEB repository** for Debian and Ubuntu
distributions.

Sporadically, Debian packages may be available via OpenSuse Build
Service (OBS), see details in a dedicated sub-section.

## Instructions

First download and add our GPG key to your apt key list:

    wget -O- https://deb.kamailio.org/kamailiodebkey.gpg | sudo apt-key add -

Our GPG key fingerprint is
`E79A CECB 87D8 DCD2 3A20  AD2F FB40 D3E6 508E A4C8` - make sure you
verify it and check it in a key store before trusting it.

Then add the repository lines to your `/etc/apt/sources.list` file
depending on the Kamailio version of your choice:

The list of APT repositories and associated operating systems is
available at:

- **<https://deb.kamailio.org>**

# DEB Packages Archive

Starting with August 25, 2021, an archive with apt repositories
corresponding to Kamailio stable versions is available at:

- **<https://deb-archive.kamailio.org>**

## Using OBS Repository

### Status

**Important: not actively maintained, use it only if you need to install
older versions of Kamailio!!!**

OBS Project:

- <https://build.opensuse.org/project/show/home:kamailio:telephony-debs>

Download Repositories:

- <http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/Debian_7.0/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/Debian_6.0/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/Debian_5.0/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/xUbuntu_12.04/>
- <http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/xUbuntu_10.04/>

#### Overview

- No source packages
- No nightly builds

#### Kamailio v4.1.x

- Distributions: `Debian 6.0 Squeeze`, `Debian 7.0 Wheezy`,
    `Ubuntu 12.04 Precise`
- Archs supported: `amd64`, `i386`

#### Kamailio v3.2.x

- Distributions: `Debian 5.0 Lenny`, `Debian 6.0 Squeeze`,
    `Ubuntu 10.04 Lucid`
- Archs supported: `amd64`, `i386`

### APT Key

First download and add our GPG key to your apt key list:

    wget https://api.opensuse.org/source/home:kamailio/_pubkey
    apt-key add _pubkey

Select from next list the repository URLs specific for desired Kamailio
version and Operating System and add to your `/etc/apt/sources.list`.

### APT Repositories for Kamailio v4.1.x

#### `Debian Squeeze`

    deb http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/Debian_6.0 ./

#### `Debian Wheezy`

    deb http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/Debian_7.0 ./

#### `Ubuntu Precise`

    deb http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/xUbuntu_12.04 ./

### APT Repositories for Kamailio v3.2.x

#### `Debian Lenny`

    deb http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/Debian_5.0 ./

#### `Debian Squeeze`

    deb http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/Debian_6.0 ./

#### `Ubuntu Lucid`

    deb http://download.opensuse.org/repositories/home:/kamailio:/telephony-debs/xUbuntu_10.04 ./

### APT Repositories Remarks

**Important note**: apt may throw error, since **download.opensuse.org**
can return 302 reply to redirect to a mirror. You have to update the URL
in **sources.list** to use directly a mirror server. For that:

- find a mirror - based on your OS, browse:
  - <http://download.opensuse.org/repositories/home://kamailio://telephony-debs/Debian_5.0/Packages?mirrorlist>
  - <http://download.opensuse.org/repositories/home://kamailio://telephony-debs/Debian_6.0/Packages?mirrorlist>
  - <http://download.opensuse.org/repositories/home://kamailio://telephony-debs/Debian_7.0/Packages?mirrorlist>
  - <http://download.opensuse.org/repositories/home://kamailio://telephony-debs/xUbuntu_10.04/Packages?mirrorlist>
  - <http://download.opensuse.org/repositories/home://kamailio://telephony-debs/xUbuntu_12.04/Packages?mirrorlist>
- pick one of the mirrors listed in the browsed page, for example
    **widehat.opensuse.org**, select its listed URL and add to
    **sources.list** the URL without the last "/Packages", resulting in:
  - <http://widehat.opensuse.org/repositories/home:/kamailio:/telephony-debs/Debian_5.0>
  - <http://widehat.opensuse.org/repositories/home:/kamailio:/telephony-debs/Debian_6.0>
  - <http://widehat.opensuse.org/repositories/home:/kamailio:/telephony-debs/xUbuntu_10.04>
