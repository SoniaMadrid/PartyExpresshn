import React from 'react';
import { Formik } from 'formik';

const CrearEvento = () => (
  <div>
  <br/>
  <br/>


    <h5 align="center">Completá el formulario con todos tus datos para que te contacten..</h5>
    <br/>
    <Formik
      initialValues={{ Nombre: '', Correo: '', Celular: '', TipoEvento:'', CantidadInvitados:'' }}

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
          <div className="form-group">
            <label htmlFor="TipoEvento">Tipo de Evento:</label>
            <input
              type="text"
              className="form-control"
              name="TipoEvento"
              placeholder="ingresa el tipo de evento que deseas"
              onChange={handleChange}
              onBlur={handleBlur}
              value={values.TipoEvento}
            />
            {errors.TipoEvento && touched.TipoEvento && errors.TipoEvento}
          </div>
          <div className="form-group">
            <label htmlFor="CantidadInvitados">Cantidad de Invitados:</label>
            <input
              type="text"
              className="form-control"
              name="CantidadInvitados"
              placeholder="ingresa la cantidad de invitados"
              onChange={handleChange}
              onBlur={handleBlur}
              value={values.CantidadInvitados}
            />
            {errors.CantidadInvitados && touched.CantidadInvitados && errors.CantidadInvitados}
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

export default CrearEvento;