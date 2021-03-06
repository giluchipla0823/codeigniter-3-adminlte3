// ParsleyConfig definition if not already set
// Validation errors messages for Parsley
// Load this after Parsley

Parsley.addMessages('es', {
  defaultMessage: "Este valor parece ser inválido.",
  type: {
    email:        "Debe ingresar un correo electrónico válido.",
    url:          "Debe ingresar una URL válida.",
    number:       "Debe ingresar un número válido.",
    integer:      "Debe ingresar un número válido.",
    digits:       "Debe ingresar un dígito válido.",
    alphanum:     "Debe ingresar un valor alfanumérico."
  },
  notblank:       "Este valor no debe estar en blanco.",
  required:       "Campo requerido.",
  pattern:        "Este valor es incorrecto.",
  min:            "Este valor no debe ser menor que %s.",
  max:            "Este valor no debe ser mayor que %s.",
  range:          "Este valor debe estar entre %s y %s.",
  minlength:      "El campo debe contener mínimo %s caracteres.",
  maxlength:      "El campo debe contener máximo %s caracteres.",
  length:         "El campo debe contener entre %s y %s caracteres.",
  mincheck:       "Debe seleccionar al menos %s opciones.",
  maxcheck:       "Debe seleccionar %s opciones o menos.",
  check:          "Debe seleccionar entre %s y %s opciones.",
  equalto:        "Este valor debe ser idéntico."
});

Parsley.setLocale('es');
