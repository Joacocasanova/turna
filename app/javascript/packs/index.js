const filters = () => {
  const formTrigger = document.getElementById("formulario")
  if(formTrigger) {
    formTrigger.addEventListener("click", function()
      {  
        const form = document.getElementById("form");
        
        if(form.style.display=="none")
        {
          form.style.display="block";
        }
        else
        {
          form.style.display="none";
        }
      }
    )
  }
}

export { filters };
