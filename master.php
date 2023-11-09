<?php

include "koneksi.php";

// Menentukan metode request
$method = $_SERVER['REQUEST_METHOD'];

header('Content-Type: application/json');

switch($method) {
    case 'GET':
        $sql = "SELECT * FROM wisata";
        $stmt = $pdo->query($sql);
        $wisata = $stmt->fetchAll();
        echo json_encode($wisata);
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->namawisata) && isset($data->lokasiwisata)) {
            $sql = "INSERT INTO wisata (namawisata, lokasiwisata) VALUES (?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->namawisata, $data->lokasiwisata]);
            echo json_encode(['message' => 'Wisata berhasil ditambahkan']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'PUT':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id) && isset($data->namawisata) && isset($data->lokasiwisata)) {
            $sql = "UPDATE wisata SET namawisata=?, lokasiwisata=? WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->namawisata, $data->lokasiwisata, $data->id]);
            echo json_encode(['message' => 'Wisata berhasil diperbarui']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id)) {
            $sql = "DELETE FROM wisata WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->id]);
            echo json_encode(['message' => 'Wisata berhasil dihapus']);
        } else {
            echo json_encode(['message' => 'ID tidak ditemukan']);
        }
        break;

    default:
        echo json_encode(['message' => 'Metode tidak dikenali']);
        break;
}

?>