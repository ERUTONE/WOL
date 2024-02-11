FROM php:apache
RUN apt-get update \
    && apt-get install -y \
    iputils-ping \
    wakeonlan
RUN a2enmod rewrite
WORKDIR /html
COPY . /html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
