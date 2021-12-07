import React from "react";
import "./App.css";
import { Route, BrowserRouter as Router, Switch } from "react-router-dom";
import { Stock } from "./pages/Stock";
import Appbar from "./components/Misc/Appbar";

function App() {
  return (
    <div className="App">
      <Router>
        <div>
          <Appbar/>

          {/* A <Switch> looks through its children <Route>s and
            renders the first one that matches the current URL. */}
          <Switch>
            <Route path="/stocks">
              <Stock />
            </Route>
            <Route path="/">
              <div style={{textAlign: 'center'}}><h1>Bienvenu sur le front demo du projet SOAR des Nazguls</h1></div>
            </Route>
          </Switch>
        </div>
      </Router>
    </div>
  );
}

export default App;
