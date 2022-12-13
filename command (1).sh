curl -s https://myrient.erista.me/files/Redump/ | grep '<a href=' | sed -E 's/.*<a href="([^"]*)".*/https:\/\/myrient\.erista\.me\/files\/Redump\/\1/'
