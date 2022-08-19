import React from "react";
import { Badge, Button } from "react-bootstrap";

function SongEntry({ song, change, setChange }) {
  const { title, length, id, likes } = song;

  function handleLikeClick() {
    const updateSong = {
      likes: song.likes + 1,
    };
    fetch(`/songs/${id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(updateSong),
    })
      .then(console.log(updateSong))
      .then(() => setChange(!change));
  }

  return (
    <div>
      <strong>{title}</strong> {Math.floor(length / 60)}m {length % 60}s{"  "}
      <Badge bg="success">{likes}</Badge>
      {"  "}
      <Button variant="outline-success" onClick={handleLikeClick}>
        💕
      </Button>
    </div>
  );
}

export default SongEntry;
