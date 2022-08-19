import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import NavBar from "./NavBar";
import Ticker from "./Ticker";
import AlbumList from "./AlbumList";
import FunBar from "./FunBar";
import Footer from "./Footer";

function App() {
  const [change, setChange] = useState(false);
  const [albums, setAlbums] = useState([]);

  useEffect(() => {
    fetch("/albums")
      .then((r) => r.json())
      .then((data) => setAlbums(data));
  }, []);

  return (
    <BrowserRouter>
      <div className="App">
        <Switch>
          <Route path="/testing">
            <div className="allApp">
              <div>
                <NavBar />
                <Ticker change={change} />
                <AlbumList
                  albums={albums}
                  change={change}
                  setChange={setChange}
                />
              </div>
              <div>
                <FunBar />
                <Footer />
              </div>
            </div>
          </Route>
          <Route path="/">
            <h1>Page Count: Test</h1>
          </Route>
        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;
