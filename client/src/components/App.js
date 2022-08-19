import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";

function App() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    fetch("/albums")
      .then((r) => r.json())
      .then((data) => console.log(data));
  }, []);

  useEffect(() => {
    fetch("/comments")
      .then((r) => r.json())
      .then((data) => console.log(data));
  }, []);

  useEffect(() => {
    fetch("/songs")
      .then((r) => r.json())
      .then((data) => console.log(data));
  }, []);

  return (
    <BrowserRouter>
      <div className="App">
        <Switch>
          <Route path="/testing">
            <header className="App-header">
              <p>
                Edit <code>src/App.js</code> and save to reload.
              </p>
            </header>
          </Route>
          <Route path="/">
            <h1>Page Count: {count}</h1>
          </Route>
        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;
