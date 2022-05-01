### Continuous Integration on Kamailio Project

#### Automated Debian/Ubuntu package building

The build system for Debian and Ubuntu packages service is kindly
sponsored by [Sipwise](http://www.sipwise.com). Sipwise is providing the
hosting and man power to create and manage this system.

[deb.kamailio.org](http://deb.kamailio.org) is based on
[jenkins-debian-glue](https://github.com/mika/jenkins-debian-glue)
project running on AWS EC2 environment thanks to [Michael
Prokop](http://michael-prokop.at/) and myself. All the needed files,
scripts and info to reproduce this system is kept public at
[github](https://github.com/sipwise/kamailio-deb-jenkins).

-   nightly builds are been built if a change is detected in the branch,
    once by night.
    -   kamailiodev-nightly  
        branch: 'master'  
        distributions: jessie, wheezy, squeeze, precise
    -   kamailio41-nightly  
        branch: '4.1'  
        distributions: jessie, wheezy, squeeze, precise
    -   kamailio40-nightly  
        branch: '4.0'  
        distributions: lenny, squeeze, wheezy, lucid, precise
    -   kamailio33-nightly  
        branch: '3.3'  
        distributions: lenny, squeeze, wheezy, lucid, precise

<!-- -->

-   tags are been built if a new tag is detected once by night.
    -   kamailio41  
        branch: '\*/tags/4.1\*'  
        distributions: jessie, wheezy, squeeze, precise
    -   kamailio40  
        branch: '\*/tags/4.0\*'  
        distributions: lenny, squeeze, wheezy, lucid, precise
    -   kamailio33  
        branch: '\*/tags/3.3\*'  
        distributions: lenny, squeeze, wheezy, lucid, precise
