# Splunk
#
# Version: 0.0.1

FROM centos:latest
MAINTAINER Nicholas Moore

EXPOSE 8000 8089 9997

VOLUME /opt/splunk/var/lib/splunk

RUN yum -y install hostname;\
    rpm -ivh --force 'http://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=Linux&version=6.2.3&product=splunk_light&filename=splunklight-6.2.3-264376-linux-2.6-x86_64.rpm&wget=true';\
    yum -y clean all

USER splunk

ENTRYPOINT [ "/opt/splunk/bin/splunk", "start", "--no-prompt", "--answer-yes" "--nodaemon" ]
