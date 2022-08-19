import AlbumCard from "./AlbumCard";
import { CardGroup } from "react-bootstrap";

function AlbumList({ albums, change, setChange }) {

  const albumList = albums.map((album) => (
    <AlbumCard
      key={album.id}
      title={album.title}
      genre={album.genre}
      album_art={album.album_art}
      rating={album.rating}
      released_in={album.released_in}
      id={album.id}
      songs={album.songs}
      comments={album.comments}
      change={change}
      setChange={setChange}
      album={album}
    />
  ));

  return (
    <div>
      <CardGroup>{albumList}</CardGroup>
    </div>
  );
}

export default AlbumList;
