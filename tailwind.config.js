const colors = require('tailwindcss/colors')


// For color definition, see https://v3.tailwindcss.com/docs/customizing-colors for the full documentation, resumed here:

// Each color is define in 11 variants: 50 100 200 300 400 500 600 700 800 900 and 950. No idea why
// You can define a new color like that :
//
// 'tahiti': {
//   100: '#cffafe',
//   200: '#a5f3fc',
//   300: '#67e8f9',
//   400: '#22d3ee',
//   500: '#06b6d4',
//   600: '#0891b2',
//   700: '#0e7490',
//   800: '#155e75',
//   900: '#164e63',
// },

// The other way to define colors is to reuse existing ones:
//
// 'tahiti' = colors.green

// The only colors used in the theme are blue purple indigo for text/fill. and white should be used at one place or an other too.

// With love

// --
// Your "chaton"


module.exports = {
  content: ["./templates/**/*.html", "./themes/kodama-theme/templates/**/*.html"],
  theme: {
    colors:{
      blue: colors.green,
      purple: colors.emerald,
      indigo: colors.teal
    }
  },
  variants: {},
  plugins: [
      require('@tailwindcss/typography'),
  ],
};