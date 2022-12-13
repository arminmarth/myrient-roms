#!/bin/sh

# URL of the web page to scrape
url="https://myrient.erista.me/files/No-Intro/"

# Send an HTTP GET request to the URL
curl -s "$url" |

# Use grep to search for all <a> (link) elements
grep "<a" |

# Use sed to extract the "href" attribute of each link
sed -n 's/.*href="\([^"]*\)".*/\1/p'
