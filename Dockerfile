FROM ubuntu:latest

LABEL maintainer="Denys Petrov <s101748@pollub.edu.pl>"

# Aktualizacja systemu, instalacja Apache, czyszczenie po zaisntallowaniu potrzebnych pakietow
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y apache2 && \
    apt-get clean

# Skopiowanie strony 
COPY index.html /var/www/html/index.html

# Otworzenie portu HTTP
EXPOSE 80

# Uruchomienie Apache w trybie foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

#za pomocą docker history możemy sprawdzić, że obraz posiada 6 aktywnych warstw