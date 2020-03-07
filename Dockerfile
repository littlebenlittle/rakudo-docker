FROM debian:10

RUN apt-get update && apt-get install -y gpg ca-certificates
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 379CE192D401AB61 \
 && echo "deb https://dl.bintray.com/nxadm/rakudo-pkg-debs stretch main" | tee -a /etc/apt/sources.list.d/rakudo-pkg.list \
 && apt-get update && apt-get install rakudo-pkg \
 && ln -s /opt/rakudo-pkg/bin/perl6 /usr/bin/perl6
 && ln -s /opt/rakudo-pkg/bin/raku /usr/bin/raku
 && ln -s /opt/rakudo-pkg/bin/nqp /usr/bin/nqp
 && ln -s /opt/rakudo-pkg/bin/moar /usr/bin/moar
 && ln -s /opt/rakudo-pkg/bin/zef /usr/bin/zef

