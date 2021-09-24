import React from 'react';
import Logo from '../../src/imag/Logo.png';

const Login = () => {
    
    return (
        <div>
  
            <div><img src={Logo}/></div>

            <form>

   <div class="row mb-3">
       
   <center> 
   <h3 for="inputEmail3" class="col-sm-15 col-form-label">Usuario :</h3> </center> 
       <div class="col-sm-15">
       <center> 
      <input type="text" name="name" lass="form-control" id="inputEmail3"/> </center>
    </div>
  </div>
  
  <div class="row mb-3">
  <center> <h3 for="inputPassword3" class="col-sm-15 col-form-label">Contraseña :</h3> </center>
    <div class="col-sm-15">
    <center>
    <input type="password" name="password" lass="form-control" id="inputEmail3"/> </center>
    </div>
  </div>
  <center>
  <button type="submit" class="btn btn-danger">Ingresar</button> </center>
  </form>
        </div>
       
    )
}

export default Login





