# Kamailio Startup Scripts

A collection with useful details about startup scripts for various
Operating Systems.

## CentOS 7 With Systemd

Content of **/etc/systemd/kamailio.service**"

    [Unit]
    Description=Kamailio SIP Server
    Documentation=man:kamailio(8) http://www.kamailio.org/
    After=syslog.target network-online.target

    [Service]
    Type=forking
    User=kamailio
    Environment=SHM_SIZE=64
    Environment=PKG_SIZE=8
    ExecStartPre=/usr/sbin/kamailio -c
    ExecStart=/usr/sbin/kamailio -m $SHM_SIZE -M $PKG_SIZE \
     -P /run/kamailio/kamailio.pid
    ExecStopPost=/usr/bin/rm -f /run/kamailio/kamailio.pid
    PIDFile=/run/kamailio/kamailio.pid
    Restart=on-failure
    RestartSec=30

    [Install]
    WantedBy=multi-user.target

Content of **/etc/tmpfiles.d/kamailio.conf**:

    d /run/kamailio 0750 kamailio kamailio

### Reload Systemd Units

    systemctl daemon-reload
    systemctl enable kamailio
    systemctl start kamailio 
