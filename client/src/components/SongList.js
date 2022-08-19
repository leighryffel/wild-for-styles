import SongEntry from "./SongEntry";
import { ListGroup } from "react-bootstrap";

function SongList({ songs, change, setChange }) {

  const songList = songs.map((song) => (
    <SongEntry
      key={song.id}
      song={song}
      change={change}
      setChange={setChange}
    />
  ));

  return (
    <div id="song">
      <ListGroup as="ol" numbered>
        {songList}
      </ListGroup>
    </div>
  );
}

export default SongList;
