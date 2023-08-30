FROM php:8.0-apache as base
COPY ./k8s/ /var/www/html
