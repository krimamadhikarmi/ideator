const colors = require('tailwindcss/colors')

module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    'fontFamily': {
      'open-sans': ['Open Sans', 'sans-serif'],
      'dosis': ['Dosis', 'sans-serif'],
      'pacifico': ['Pacifico', 'sans-serif']
    },
    'colors': {
      ...colors,
      'primary': {
        500: '#337ab7'
      }
    }
  }
}