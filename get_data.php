<?php
header("Content-Type: application/json; charset=UTF-8");

//repo
require_once 'Repository.php';
$servername = "localhost";
$username = "root";
$password = "mo123";
$dbname = "hoho";

$repository = new Repository($servername, $username, $password, $dbname);

// params
$response = [];

try {
    // JSON-Daten vor der Action-Initialisierung einlesen
    $data = json_decode(file_get_contents("php://input"), true);

    // Action aus GET oder POST-Body bestimmen
    $action = isset($_GET['action']) ? $_GET['action'] : (isset($data['action']) ? $data['action'] : '');

    if ($action) { //?action=...
        switch ($action) {
            case 'getTicketById':
                $id = isset($_GET['id']) ? $_GET['id'] : null;
                if (!$id)
                    throw new Exception("ID ist erforderlich");
                $response = $repository->getTicketById($id);
                break;
            case 'getAllTicketsSbg':
                $response = $repository->getAllTicketsSBG();
                break;
            case 'getAllTicketsVienna':
                $response = $repository->getAllTicketsVIE();
                break;
            case 'getPaidTicketsForUsers':
                $id = isset($_GET['id']) ? $_GET['id'] : null;
                if (!$id)
                    throw new Exception("ID ist erforderlich");
                $response = $repository->getPaidTicketsForUser($id);
                break;
            case 'getImagesForApplication':
                $response = $repository->getImagesForApplication();
                break;
            case 'getImageForLocAndDest':
                $loc = isset($_GET['loc']) ? $_GET['loc'] : null;
                $dest = isset($_GET['dest']) ? $_GET['dest'] : null;

                $response = $repository->getImageForLocAndDest($loc, $dest);
                break;
            case 'getUserForToken':
                $token = isset($_GET['token']) ? $_GET['token'] : null;
                if (!$token)
                    throw new Exception("token ist erforderlich");
                $response = $repository->getUserForToken($token);
                break;
            case 'insertBuyTicket':
                $bookedFrom = isset($data['bookedFrom']) ? $data['bookedFrom'] : null;
                $bookedTo = isset($data['bookedTo']) ? $data['bookedTo'] : null;
                $buyDate = isset($data['buyDate']) ? $data['buyDate'] : null;
                $userId = isset($data['userId']) ? $data['userId'] : null;
                $ticketId = isset($data['ticketId']) ? $data['ticketId'] : null;
                $adults = isset($data['adults']) ? $data['adults'] : null;
                $children = isset($data['children']) ? $data['children'] : null;
                $ticketNr = "123";
                $bookingNr = "123";

                $result = $repository->insertBuyedTickets($bookedFrom, $bookedTo, $buyDate, $userId, $ticketId, $bookingNr, $ticketNr, $adults, $children);
                $response = ["success" => $result, "message" => $result ? "Ticket erfolgreich eingefügt" : "Fehler beim Einfügen"];
                break;
            default:
                throw new Exception("Ungültige Aktion");
        }
    } else {
        throw new Exception("Keine gültige Aktion oder SQL-Befehl angegeben");
    }
} catch (Exception $e) {
    http_response_code(400);
    $response = ["error" => $e->getMessage()];
}

echo json_encode($response, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);

?>