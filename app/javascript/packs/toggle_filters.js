const toggleFilters = () => {
  const filters = document.querySelectorAll(".toggle-filters");
  filters.forEach((filter) => {
    filter.addEventListener('click', () => {
      filters.forEach((filterToRemove) => {
        filterToRemove.classList.remove('toggle-filters-active');
      })
      filter.classList.add('toggle-filters-active');
    });
  });
}

export { toggleFilters };


// for ( i = 0; i < filters.lenght; i++) {}
