FROM richarvey/nginx-php-fpm:1.9.1

COPY . .

# Image config
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

# Laravel config
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr

# Database config
ENV DATABASE_URL="postgresql://hello_postgresql_2327_user:rMB98rimtls0j2GJGo7ZcpUEEkQqJ8jl@dpg-cukt3li3esus73avtk5g-a/hello_postgresql_2327"
ENV DB_CONNECTION="pgsql"

# Laravel APP_KEY
ENV APP_KEY="rMB98rimtls0j2GJGo7ZcpUEEkQqJ8jl"

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 2

CMD ["/start.sh"]
