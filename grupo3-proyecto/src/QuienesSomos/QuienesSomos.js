import React from 'react';
import Logo from '../../src/imag/Logo.png';
function QuienesSomos(props){
    return(
        <>
        <div class="col text-center">
        <div><img src={Logo}/></div>
        </div>
        <br/>
        <p>Somos ¡Party Express!, nuestro eslogan es "La vida son momentos, ¡Celebralos!".</p>
        <p>Somos una organizacion con la intencion de hacer la planeacion de tus eventos mucho mas facil. No resulta facil organizar eventos en tiempos actuales, y todo el proceso puede resultar tedioso. ¡Por eso estamos nosotros! Solamente elije el tipo de evento y/o celebracion que deseas crear, todos los detalles necessarios, tu paquete de eleccion, y ¡listo! ¡Deja el resto a nosotros! Estas garantizado un servicio de calidad.</p>
        </>
    )
}

export default QuienesSomos;