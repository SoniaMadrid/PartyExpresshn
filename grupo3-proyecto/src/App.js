//import logo from './logo.svg';
import './App.css';
import React from 'react';
import Inicio from './Inicio/Inicio';
import QuienesSomos from './QuienesSomos/QuienesSomos';
import CrearEvento from './CrearEvento/CrearEvento';
import Ingresar from './Ingresar/Ingresar';
import Contacto from './Contacto/Contacto';


import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";

class App extends React.Component {
  render () {
    return (  

      <Router>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a className="navbar-brand" href="/">PARTY EXPRESS</a>
          <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon"></span>
          </button>
          <div className="collapse navbar-collapse" id="navbarNav">
            <ul className="navbar-nav">
              <li className="nav-item active">
                <Link className="nav-link" to="/Inicio">Inicio</Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link" to="/QuienesSomos">¿Quiénes Somos?</Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link" to="/CrearEvento">Crea tu Evento</Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link" to="/Ingresar">Ingresar</Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link" to="/Contacto">Contacto</Link>
              </li>
            </ul>
            <ul class="navbar-nav nav-flex-icons">
                  <li class="nav-item">
                   <a href="#" class="nav-link">
                    <i class="fa fa-facebook"></i>
                   </a>
                  </li>
                  <li class="nav-item">
                   <a href="#" class="nav-link">
                    <i class="fa fa-twitter"></i>
                   </a>
                  </li>
                  <li class="nav-item">
                   <a href="#" class="nav-link">
                    <i class="fa fa-whatsapp"></i>
                   </a>
                  </li>
              </ul>
          </div>
        </nav>
        <Switch>
          <Route path="/Inicio" component={Inicio}/>
          <Route path="/QuienesSomos" component={QuienesSomos}/>
          <Route path="/CrearEvento" component={CrearEvento}/>
         <Route path="/Contacto" component={Contacto}/>
         <Route path="/Ingresar" component={Ingresar}/>

        </Switch>
      </Router>
    );
  }
}

export default App;
