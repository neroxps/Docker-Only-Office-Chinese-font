FROM onlyoffice/documentserver
COPY winfont /usr/share/fonts/winfont
RUN fc-cache -f -v && /usr/bin/documentserver-generate-allfonts.sh 
EXPOSE 80 443
VOLUME /etc/onlyoffice /var/log/onlyoffice /var/lib/onlyoffice /var/www/onlyoffice/Data /var/lib/postgresql /usr/share/fonts/truetype/custom

CMD bash -C '/app/onlyoffice/run-document-server.sh';'bash'
