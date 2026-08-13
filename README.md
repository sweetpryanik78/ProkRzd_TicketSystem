# ProkRzd_TicketSystem

osTicket git source code - https://github.com/osTicket/osTicket/releases/tag/v1.18.4
osTicket unofficial API git source code - https://github.com/BMSVieira/osticket-api

Create folder 'tls-certs' at root of the project!!!

Random password generator --->  tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 64; echo

String for cron (auto update cert) ---> */5 * * * * docker compose --project-directory ~/ProkRzd_TicketSystem/ stop osticket && ~/ProkRzd_TicketSystem/certbot/getOrRenewTlsCert.sh && docker compose --project-directory ~/ProkRzd_TicketSystem/ start osticket




Нужно для нормальной работы API:
1) изменить размер ключа API на 48 в файле "/ost_wbs/classes/class.key.php"

2) Изменить импорт файлов ".php" в файле "/ost_wbs/index.php"
// Autoload class files
spl_autoload_register( function ( $class ) {

    // Custom import
    require_once 'classes/class.' . strtolower($class) . '.php';
	
	// Original import
    //require_once 'classes/class.' . lcfirst($class) . '.php';
});