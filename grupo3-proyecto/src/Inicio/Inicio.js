import React from 'react';
import Logo from '../../src/imag/Logo.png';
import img10 from "../../src/imag/boda/img10.jpeg";
import img11 from "../../src/imag/boda/img11.jpg";
import img12 from "../../src/imag/boda/img12.jpg";

import fiesta from "../../src/imag/cumpleaños/fiesta.webp";
import evento from "../../src/imag/cumpleaños/evento.jpg";
import reiroho from "../../src/imag/cumpleaños/reiroho.jpg";

import bimg1 from "../../src/imag/babyshower/bimg1.jpg";
import bimg2 from "../../src/imag/babyshower/bimg2.jpg";
import bimg3 from "../../src/imag/babyshower/bimg3.jpg";

import img1 from "../../src/imag/graduacion/img1.jpg";
import img2 from "../../src/imag/graduacion/img2.jpg";
import img3 from "../../src/imag/graduacion/img3.jpg";

import cimg1 from "../../src/imag/coorporativo/cimg1.jpg";
import cimg2 from "../../src/imag/coorporativo/cimg2.jpg";
import cimg3 from "../../src/imag/coorporativo/cimg3.jpg";

import aimg1 from "../../src/imag/15años/aimg1.jpg";
import aimg10 from "../../src/imag/15años/aimg10.jpg";
import aimg3 from "../../src/imag/15años/aimg3.jpg";

function Inicio(props){
    return(
        <>
      <br/>
      <div class="col text-center">
      <div><img src={Logo}/></div>
      <h4>La vida son momentos, ¡Celebralos!</h4>
      </div>
      <br/>
      <p>Lo primero es poder plantear junto con todo el equipo de organizadores o proveedores de la misma, las pautas
        necesarias para la realización de cada proceso creativo que es de suma importancia para dar inicio a la primera
        etapa de elaboración, se dividen labores y se hacen planos de los parámetros que el evento necesita.</p>
    <p></p>
        <p> Detrás de cada evento existe un gran equipo de proveedores que cada uno añade su servicio profesional y juntos
        logran contribuir al cumplimiento de un evento según el estilo emitido, Equipo de Decoración, Equipos de Montaje
        de sonido y tarimas, Wedding y Event Planner, Repostero, salones de Fiestas y entre otros que dan armonía a cada
        proceso creativo que muy poco se ve pero que logran resultados extraordinarios.
    </p>
    <hr/>
    <h5>Realizamos todo tipo de eventos, entre ellos:</h5>
       
    <h6>Bodas</h6>
    <div id="carouselExampleIndicators" className="carousel slide" data-ride="carousel">
        <ol className="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" className="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div className="carousel-inner">
          <div className="carousel-item active">   
          <div>  <img src={img10} /> </div>
          </div>
          <div className="carousel-item">
          <div>  <img src={img11} /></div>
          </div>
          <div className="carousel-item">
          <div>   <img src={img12}/></div>
          </div>
        </div>
        <a className="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span className="carousel-control-prev-icon" aria-hidden="true"></span>
          <span className="sr-only">Previous</span>
        </a>
        <a className="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span className="carousel-control-next-icon" aria-hidden="true"></span>
          <span className="sr-only">Next</span>
        </a>
      </div>
        <br/>
      
    <h6>Cumpleaños</h6>
    <div id="carouselExampleIndicators" className="carousel slide" data-ride="carousel">
        <ol className="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" className="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div className="carousel-inner">
          <div className="carousel-item active">
          <div> <img src={fiesta}/></div>
          </div>
          <div className="carousel-item">
          <div> <img src={evento}/></div>
          </div>
          <div className="carousel-item">
          <div> <img src={reiroho}/> </div>
          </div>
        </div>
        <a className="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span className="carousel-control-prev-icon" aria-hidden="true"></span>
          <span className="sr-only">Previous</span>
        </a>
        <a className="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span className="carousel-control-next-icon" aria-hidden="true"></span>
          <span className="sr-only">Next</span>
        </a>
      </div>
      <br/>

    <h6>Baby Shower</h6>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol className="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div className="carousel-inner">
          <div className="carousel-item active">
          <div> <img src={bimg1}/></div>
          </div>
          <div className="carousel-item">
          <div>   <img src={bimg2} /></div>
          </div>
          <div className="carousel-item">
          <div> <img src={bimg3}/></div>
          </div>
        </div>
        <a className="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span className="carousel-control-prev-icon" aria-hidden="true"></span>
          <span className="sr-only">Previous</span>
        </a>
        <a className="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span className="carousel-control-next-icon" aria-hidden="true"></span>
          <span className="sr-only">Next</span>
        </a>
      </div>
      <br/>
    <h6>Graduaciones</h6>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol className="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div className="carousel-inner">
          <div className="carousel-item active">
           <div> <img src={img1}/></div>
          </div>
          <div className="carousel-item">
          <div>   <img src={img2}/></div>
          </div>
          <div className="carousel-item">
          <div>  <img src={img3}/></div>
          </div>
        </div>
        <a className="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span className="carousel-control-prev-icon" aria-hidden="true"></span>
          <span className="sr-only">Previous</span>
        </a>
        <a className="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span className="carousel-control-next-icon" aria-hidden="true"></span>
          <span className="sr-only">Next</span>
        </a>
      </div>
      <br/>

    <h6>Coorporativo</h6>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol className="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div className="carousel-inner">
          <div className="carousel-item active">
           <div> <img src={cimg1}/></div>
          </div>
          <div className="carousel-item">
          <div>   <img src={cimg2}/></div>
          </div>
          <div className="carousel-item">
          <div>  <img src={cimg3}/></div>
          </div>
        </div>
        <a className="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span className="carousel-control-prev-icon" aria-hidden="true"></span>
          <span className="sr-only">Previous</span>
        </a>
        <a className="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span className="carousel-control-next-icon" aria-hidden="true"></span>
          <span className="sr-only">Next</span>
        </a>
      </div>
      <br/>

    <h6>15 años</h6>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol className="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div className="carousel-inner">
          <div className="carousel-item active">
          <div> <img src={aimg1}/></div> 
          </div>
          <div className="carousel-item">
          <div>  <img src={aimg10}/> </div>
          </div>
          <div className="carousel-item">
          <div>  <img src={aimg3}/></div>
          </div> 
          </div> 
        <a className="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span className="carousel-control-prev-icon" aria-hidden="true"></span>
          <span className="sr-only">Previous</span>
        </a>
        <a className="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span className="carousel-control-next-icon" aria-hidden="true"></span>
          <span className="sr-only">Next</span>
        </a>
        </div>
    
    <p></p>
    <hr/>
    <h5>Salones de Eventos</h5>
    <div class="container-fluid pt4">
      <div class="row">
        <div class="col-lg">
          <ul>
            <p>San Pedro Sula, Cortés</p>
            <li><a href="https://www.facebook.com/MHsalones/">MH Salones para eventos</a></li>
            <li><a href="https://es-la.facebook.com/eventosplayland/ ">Salón de Eventos Infantil Playland</a></li>
            <li><a href="http://www.haciendatara.com/site/index.php/es/">Hacienda Tara</a></li>
            <li><a href="https://novias-con-brillo.principalwebsite.com/">Bodas y Eventos/Novias con Brillo Honduras</a>        </li>
            <li><a href="https://www.ccichonduras.org/website/expocentro/">Expocentro</a></li>
            <li><a href="https://portalunico.iaip.gob.hn/portal/ver_documento.php?uid=MTU4ODM2ODkzNDc2MzQ4NzEyNDYxOTg3MjM0Mg==">Colegio de abogados </a></li>
            <li><a href="https://www.techosverdes.net/complejo/salon">Complejo Plaza Comercial Bioclimática Techos Verdes </a></li>
            <li><a href="http://www.copantl.com/salones/salones">Copantl</a></li>
            <li><a href="https://www.hotelmayacolonial.com/#">Hotel Maya Colonial</a></li>
            <li><a href="https://www.ihg.com/intercontinental/hotels/us/es/san-pedro-sula/sapha/hoteldetail/meetings-events">Intercontinental</a></li>    
        </ul>
        </div>
    
        <div class="col-lg">
          <ul>
            <p>Omoa, Cortés</p>
            <li><a href="http://www.paraisohotelhn.com/eventos/">Paraiso Rainforest and Beach Hotel</a></li>
          </ul>
        </div>
    
        <div class="col-lg">
          <ul>
            <p>Tegucigalpa</p>
            <li><a href="https://www.colegiomedico.hn/servicios/instalaciones/petit-salon/">Colegio Médico</a></li>
            <li><a href="https://www.aftegucigalpa.hn/alquiler-de-espacios/">Alianza Francesa</a></li>
            <li><a href="https://ahiba.hn/alquiler-de-salon/">AHIBA</a></li>
          </ul>
        </div> 
        </div>
        </div>
       
        </>
    );
}

export default Inicio;