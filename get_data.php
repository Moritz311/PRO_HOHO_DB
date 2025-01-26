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
$action = isset($_GET['action']) ? $_GET['action'] : '';
$response = [];

try {
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
                $token = isset($_GET['token'])?$_GET['token']:null;
                if(!$token)
                    throw new Exception("token ist erforderlich");
                $response = $repository->getUserForToken($token);
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