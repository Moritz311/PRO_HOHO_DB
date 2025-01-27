<?php

class Repository
{
    private $conn;

    public function __construct($servername, $username, $password, $dbname)
    {
        $this->conn = new mysqli($servername, $username, $password, $dbname);
        if ($this->conn->connect_error) {
            die("Datenbank-Verbindung fehlgeschlagen: " . $this->conn->connect_error);
        }
    }

    public function __destruct()
    {
        $this->conn->close();
    }

    // predefined queries
    public function getTicketById($id)
    {
        $stmt = $this->conn->prepare("SELECT * FROM ticket WHERE ID = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        $data = $result->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $data;
    }

    public function getAllTicketsSBG()
    {
        $result = $this->conn->query("SELECT t.*, i.URL AS url FROM ticket t LEFT JOIN imageforapplication i ON t.imageForApp=i.id WHERE t.location = 'Salzburg'");
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getAllTicketsVIE()
    {
        $result = $this->conn->query("SELECT t.*, i.URL AS url FROM ticket t LEFT JOIN imageforapplication i ON t.imageForApp=i.id WHERE t.location = 'Vienna'");
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getPaidTicketsForUser($id)
    {
        $stmt = $this->conn->prepare("SELECT b.*, t.tour,t.address, i.url  FROM buyedticket b JOIN ticket t ON b.ticket_ID = t.ID JOIN imageforapplication i ON t.imageForApp=i.ID  WHERE b.user_ID = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        $data = $result->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $data;
    }

    public function getImagesForApplication()
    {
        $result = $this->conn->query("SELECT * FROM imageforapplication");
        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function getImageForLocAndDest($loc = null, $dest = null)
    {
        if ($dest === null) {
            $stmt = $this->conn->prepare("SELECT id,URL as url,name FROM imageforapplication WHERE location = ?");
            $stmt->bind_param("s", $loc);
        } else if ($loc === null) {
            $stmt = $this->conn->prepare("SELECT id,URL as url,name FROM imageforapplication WHERE destInApp = ?");
            $stmt->bind_param("i", $dest);
        } else {
            $stmt = $this->conn->prepare("SELECT id,URL as url,name FROM imageforapplication WHERE location = ? AND destInApp = ?");
            $stmt->bind_param("si", $loc, $dest);
        }

        $stmt->execute();
        $result = $stmt->get_result();
        $data = $result->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $data;
    }

    public function getUserForToken($token)
    {
        $stmt = $this->conn->prepare("SELECT ID FROM user WHERE token = ?");
        $stmt->bind_param("s", $token);
        $stmt->execute();
        $result = $stmt->get_result();
        $data = $result->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $data[0]['ID'];
    }

    public function insertBuyedTickets($bookedFrom, $bookedTo, $buyDate, $userId, $ticketId, $bookingNr, $ticketNr, $adults, $children)
    {
        $stmt = $this->conn->prepare("INSERT INTO buyedticket (bookedFrom, bookedTo, buyDate, user_ID, ticket_ID, bookingNr, ticketNr, adults, children) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssiissii", $bookedFrom, $bookedTo, $buyDate, $userId, $ticketId, $bookingNr, $ticketNr, $adults, $children);

        $success = $stmt->execute();
        if (!$success) {
            return ["success" => false, "message" => "SQL-Fehler: " . $stmt->error];
        }

        $stmt->close();

        return ["success" => $success, "message" => "Ticket erfolgreich eingefügt"];
    }
}

?>
