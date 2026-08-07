# ProkRzd_OsTicket

osTicket git source code - https://github.com/osTicket/osTicket/releases/tag/v1.18.4

Create folder 'cert' at root of the project!!!

Random password generator --->  tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 64; echo

String for cron (auto update cert) ---> */5 * * * * docker compose --project-directory ~/ProkRzd_OsTicket/ stop osticket && docker compose --project-directory ~/ProkRzd_OsTicket/ restart certbot && docker compose --project-directory ~/ProkRzd_OsTicket/ start osticket