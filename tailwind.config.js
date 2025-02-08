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

module.exports = {
  content: ["./templates/**/*.html", "./themes/kodama-theme/templates/**/*.html"],
  theme: {
    colors:{
      blue: colors.green,
      purple: colors.emerald,
      indigo: colors.teal
    },
    extend : {
      backgroundColor: {
        DEFAULT: 'rgb(255, 255, 255)',    // --background-color
        header: 'rgb(250, 250, 250)',     // --header-background-color
        code: 'rgb(247, 248, 250)',       // --code-background
      },
      textColor: {
        DEFAULT: 'rgb(51, 51, 51)',       // --text-color
      },
      borderColor: {
        DEFAULT: 'rgb(195, 195, 195)',    // --border-color
      },

    }
  },
  variants: {},
  plugins: [
      require('@tailwindcss/typography'),
      function({ addBase }) {
        addBase({
          'a': {
            color: 'rgb(29, 96, 163)',      // --link-color
            '&:hover': {
              color: 'rgb(29, 163, 136)',   // --link-hover-color
              borderBottomColor: 'rgb(0, 120, 132)', // --link-hover-line-color
            }
          }
        })
      }
  
  ],
};

// --background-color; rgb(255, 255, 255);
//  --header-background-color; rgb(250, 250, 250);
//  --text-color; rgb(51, 51, 51);
//  --text-accent-color; rgb(117, 117, 117);
//  --border-color; rgb(195, 195, 195);
//  --link-color; rgb(29, 96, 163);
// --link-hover-color; rgb(29, 163, 136);
//  --link-hover-line-color; rgb(0, 120, 132);
//  --icon-hover-color; rgb(29, 163, 136);
//  --icon-color; rgb(51, 51, 51);
//  --code-background; rgb(247, 248, 250);
//  --table-header-background-color; rgb(250, 250, 250);
