# History: 15 Years SER-Kamailio

    Date: Sep 2, 2016
    Data compiled by: Daniel-Constantin Mierla

## Overview

**SIP Express Router** (aka **SER**) is the initial name of the project
that emerged into Kamailio starting with 2008. It is a high-performance,
configurable, free Session Initiation Protocol (SIP) server licensed
under the open-source GNU license, offering a large set of features.
Started in 2001, before the publishing of RFC3261 (SIP v2.0) in summer
of 2002, Kamailio-SER pioneered the development of many SIP extensions
and pushed further the real-time communications over IP.

Initial project web site was:

- <http://iptel.org/ser>

Used over the time:

- <http://sip-router.org>

Now the web site is:

- <http://www.kamailio.org>

It is the oldest and most robust open source SIP server, routing
**billions of VoIP minutes every month world wide**, being used from
Telcos and Carriers to ITSP and SOHO environments. If you haven't heard
of it so far, it is very likely because your VoIP provider routes the
calls fast and reliable with SER-based SIP servers, so you don't need to
build your own system.

First source code commit of SER-Kamailio was done **15 years ago**:
**Sep 3, 2001**. According to GIT log, first three commits were:

    git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --reverse | head -3

    512dcd9 Andrei Pelinescu-Onciul Mon Sep 3 21:27:11 2001 +0000   Initial revision
    888ca09 Andrei Pelinescu-Onciul Tue Sep 4 01:41:39 2001 +0000   parser seems to work
    e60a972 Andrei Pelinescu-Onciul Tue Sep 4 20:55:41 2001 +0000   First working release

That is \*\* 5479 days\*\* of continuous development, with hundreds of
contributors, estimated cost of development: **over 18 000 000 USD**
(averaged 70000USD/year/developer and 261 person-years).

## Summary of Evolution

- **September 2001** - initial commit, SER was then developed for
    about one year internally at FhG FOKUS Institute, Berlin, Germany
- **Autumn 2002** - SER was released as GPL, code published on
    BerliOS: <http://developer.berlios.de/projects/ser/>
- **June 2005** - [OpenSER](http://www.openser-project.org) forked
    from SER, code hosted by Source Forge:
    <http://sourceforge.net/projects/openser/>
- **July 2008** - OpenSER was renamed to
    [Kamailio](http://www.kamailio.org)
- **November 2008** - SER and Kamailio teams decide to join
    development efforts and merge the source code trees of the two
    applications
  - development portal for both changed to: <http://sip-router.org>
- **January 2010** - version 3.0.0 is released, from a source code
    tree containing both SER and Kamailio
- **Septeber 2011** - the project celebrates 10 years of development
- **March 2013** - version 4.4.0 is released, project switching to use
    only Kamailio name for public versions
- **Septeber 2016** - the project celebrates 15 years of development
- **Autumn 2016** - the project is preparing the release of v5.0.0

## Releases

Kamailio Only:

- 0.9.4 - 2005-06-14
- 0.9.5 - 2005-07-01
- 1.0.0 - 2006-02-27
- 1.0.1 - 2006-02-27
- 1.1.0 - 2007-03-12
- 1.1.1 - 2007-03-12
- 1.2.0 - 2007-03-12
- 1.2.1 - 2007-05-23
- 1.2.2 - 2008-09-17
- 1.2.3 - 2008-09-17
- 1.3.0 - 2007-12-13
- 1.3.1 - 2008-03-11
- 1.3.2 - 2008-05-15
- 1.3.3 - 2008-11-24
- 1.3.4 - 2008-11-24
- 1.4.0 - 2008-09-25
- 1.4.1 - 2008-10-23
- 1.4.2 - 2008-10-23
- 1.4.3 - 2008-12-16
- 1.4.4 - 2009-03-25
- 1.4.5 - 2010-02-02
- 1.5.0 - 2009-03-02
- 1.5.1 - 2009-04-29
- 1.5.2 - 2009-07-14
- 1.5.3 - 2009-10-21
- 1.5.4 - 2010-02-02
- 1.5.5 - 2010-10-20
- 3.0.0 - 2010-01-11
- 3.0.1 - 2010-03-08
- 3.0.2 - 2010-05-27
- 3.0.3 - 2010-08-19
- 3.0.4 - 2010-10-20
- 3.1.0 - 2010-10-06
- 3.1.1 - 2010-12-02
- 3.1.2 - 2011-04-04
- 3.1.3 - 2011-04-04
- 3.1.4 - 2011-05-26
- 3.1.5 - 2011-09-14
- 3.1.6 - 2012-07-14
- 3.2.0 - 2011-10-18
- 3.2.1 - 2011-12-01
- 3.2.2 - 2012-01-31
- 3.2.3 - 2012-04-19
- 3.2.4 - 2012-07-19
- 3.3.0 - 2012-06-18
- 3.3.1 - 2012-08-02
- 3.3.2 - 2012-10-16
- 3.3.3 - 2012-12-18
- 3.3.4 - 2013-02-25
- 3.3.5 - 2013-08-15
- 3.3.6 - 2013-12-19
- 3.3.7 - 2014-03-06
- 4.0.0 - 2013-03-11
- 4.0.1 - 2013-04-25
- 4.0.2 - 2013-06-12
- 4.0.3 - 2013-08-15
- 4.0.4 - 2013-10-02
- 4.0.5 - 2013-12-20
- 4.0.6 - 2014-03-06
- 4.0.7 - 2014-11-07
- 4.1.0 - 2013-12-04
- 4.1.1 - 2014-01-09
- 4.1.2 - 2014-03-06
- 4.1.3 - 2014-04-24
- 4.1.4 - 2014-06-12
- 4.1.5 - 2014-08-06
- 4.1.6 - 2014-09-18
- 4.1.7 - 2014-11-06
- 4.1.8 - 2015-02-05
- 4.1.9 - 2015-12-18
- 4.2.0 - 2014-10-15
- 4.2.1 - 2014-11-11
- 4.2.2 - 2015-01-08
- 4.2.3 - 2015-02-10
- 4.2.4 - 2015-04-02
- 4.2.5 - 2015-05-19
- 4.2.6 - 2015-07-30
- 4.2.7 - 2015-12-17
- 4.2.8 - 2016-07-05
- 4.3.0 - 2015-06-10
- 4.3.1 - 2015-07-20
- 4.3.2 - 2015-09-10
- 4.3.3 - 2015-10-02
- 4.3.4 - 2015-11-25
- 4.3.5 - 2016-03-03
- 4.3.6 - 2016-06-30
- 4.4.0 - 2016-03-30
- 4.4.1 - 2016-05-10
- 4.4.2 - 2016-06-28
