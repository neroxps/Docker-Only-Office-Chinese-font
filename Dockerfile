FROM onlyoffice/documentserver
COPY winfont.gz.tar /usr/share/fonts/truetype
RUN tar xzf /usr/share/fonts/truetype/winfont.gz.tar -C /usr/share/fonts/truetype/ && rm -f /usr/share/fonts/truetype/winfont.gz.tar && fc-cache -f -v && /usr/bin/documentserver-generate-allfonts.sh 
EXPOSE 80 443
VOLUME /etc/onlyoffice /var/log/onlyoffice /var/lib/onlyoffice /var/www/onlyoffice/Data /var/lib/postgresql /usr/share/fonts/truetype/custom

CMD bash -C '/app/onlyoffice/run-document-server.sh';'bash'
