const filters = () => {
  const formTrigger = document.getElementById("formulario")
  const formTrigger1 = document.getElementById("formulario1")


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

  if(formTrigger1) {
    formTrigger1.addEventListener("click", function()
      {  
        const form = document.getElementById("form1");
        
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
