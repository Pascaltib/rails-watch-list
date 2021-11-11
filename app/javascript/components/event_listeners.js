const newMovieButton = () => {
  const button = document.querySelector('#new-movie-button');
  const form = document.querySelector('#new-movie-form')
  if (button) {
    button.addEventListener('click', () => {
      form.classList.toggle('hide-form')
    });
  }
}
export { newMovieButton };
