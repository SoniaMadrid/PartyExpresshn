import React from 'react';
import { Formik } from 'formik';

const Contacto = () => (
  <div>
  <br/>
  <br/>
    <h5 align="center">Para más información, por favor ingresar los siguientes datos solicitados y de inmediato le atenderemos.</h5>
    <br/>
    <Formik
      initialValues={{ Nombre: '', Correo: '', Celular: '' }}
      
      onSubmit={(values, { setSubmitting }) => {
        setTimeout(() => {
          alert(JSON.stringify(values, null, 2));
          setSubmitting(false);
        }, 1000);
      }}
    >
      {({
        values,
        errors,
        touched,
        handleChange,
        handleBlur,
        handleSubmit,
        isSubmitting
      }) => (
        <div className="col-sm-12 col-lg-6 offset-lg-3">
        <form onSubmit={handleSubmit}>
          <div className="form-group">
            <label htmlFor="Nombre">Nombre:</label>
            <input
              type="text"
              className="form-control"
              name="Nombre"
              placeholder="ingresa tu nombre"
              onChange={handleChange}
              onBlur={handleBlur}
              value={values.Nombre}
            />
            {errors.Nombre && touched.Nombre && errors.Nombre}
          </div>
          <div className="form-group">
            <label htmlFor="Correo">Correo:</label>
            <input
              type="text"
              className="form-control"
              name="Correo"
              placeholder="correo@correo.com"
              onChange={handleChange}
              onBlur={handleBlur}
              value={values.Correo}
            />
            {errors.Correo && touched.Correo && errors.Correo}
          </div>
          <div className="form-group">
            <label htmlFor="Celular">Número de Celular:</label>
            <input
              type="text"
              className="form-control"
              name="Celular"
              placeholder="9999-9999"
              onChange={handleChange}
              onBlur={handleBlur}
              value={values.Celular}
            />
            {errors.Celular && touched.Celular && errors.Celular}
          </div>
          <button type="submit"  className="btn btn-primary" disabled={isSubmitting}>
            {isSubmitting ? 'Submitting' : 'Aceptar'}
          </button>
        </form>
      </div>
      )}
    </Formik>
  </div>
  
);


export default Contacto;