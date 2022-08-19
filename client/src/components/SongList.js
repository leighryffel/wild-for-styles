import SongEntry from "./SongEntry";

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
      <div>{songList}</div>
    </div>
  );
}

export default SongList;
