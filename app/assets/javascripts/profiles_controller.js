const statesDropdown = document.getElementById('model_state');
const citiesDropdown = document.getElementById('model_city');

statesDropdown.addEventListener('change', () => {
  const selectedState = statesDropdown.value;
  const selectedCities = states.find(state => state.name === selectedState).cities;

  citiesDropdown.innerHTML = '';
  selectedCities.forEach(city => {
    const option = document.createElement('option');
    option.value = city;
    option.textContent = city;
    citiesDropdown.appendChild(option);
  });
});

document.addEventListener('DOMContentLoaded', () => {
  const selectedState = statesDropdown.value;
  const selectedCities = states.find(state => state.name === selectedState).cities;

  citiesDropdown.innerHTML = '';
  selectedCities.forEach(city => {
    const option = document.createElement('option');
    option.value = city;
    option.textContent = city;
    citiesDropdown.appendChild(option);
  });
});
