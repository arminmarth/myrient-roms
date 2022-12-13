curl -s https://myrient.erista.me/files/No-Intro/ | grep '<a href=' | sed -E 's/.*<a href="([^"]*)".*/https:\/\/myrient\.erista\.me\/files\/No-Intro\/\1/'
