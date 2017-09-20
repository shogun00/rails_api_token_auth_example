FROM postgres:9.6.1
RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
ENV LANG ja_JP.utf8
ENV TZ Asia/Tokyo

RUN apt-get update
RUN apt-get install -y vim

COPY postgresql.conf /var/lib/pgsql/9.6/data/postgresql.conf
COPY pg_hba.conf /var/lib/pgsql/9.6/data/pg_hba.conf

