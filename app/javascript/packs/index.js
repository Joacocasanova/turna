const filters = () => {
  document.getElementById("formulario").addEventListener("click", function()
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

export { filters };
