module.exports = {
  mode: 'jit',
  purge: [
    "./app/**/*.html.erb",
    "./app/components/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
  ],
  darkMode: false, // or 'media' or 'class',
  theme: {
    extend: {
      colors: {
        transparent: 'transparent',
        current: 'currentColor',
        white: {
          DEFAULT: '#fffffa'
        },
        blue: {
          DEFAULT: '#81A4CD',
          '50': '#FFFFFF',
          '100': '#F6F8FB',
          '200': '#D9E3F0',
          '300': '#BBCEE4',
          '400': '#9EB9D9',
          '500': '#81A4CD',
          '600': '#5987BD',
          '700': '#3F6B9F',
          '800': '#2F5077',
          '900': '#1F354E'
        },
        'clementine': {
          DEFAULT: '#FAA916',
          '50': '#FEEBCA',
          '100': '#FDE4B6',
          '200': '#FDD58E',
          '300': '#FCC666',
          '400': '#FBB83E',
          '500': '#FAA916',
          '600': '#D38A05',
          '700': '#9C6603',
          '800': '#664202',
          '900': '#2F1E01'
        },
        facebook: {
          DEFAULT: '#3b5998'
        },
        google: {
          DEFAULT : '#4285f4'
        }
      },
      fontFamily: {
        'body': ['Bitter', 'serif'],
        'secondary': ['Work Sans', 'sans-serif'],
      },
      borderRadius: {
        'none': '0',
        'sm': '0.125rem',
        DEFAULT: '0.25rem',
        DEFAULT: '4px',
        'md': '0.375rem',
        'lg': '1rem',
        'full': '9999px',
        'large': '12px',
      },
      boxShadow: {
        outline: '0 0 0 3px rgba(250, 179, 19, 0.6)',
      },
      padding: {
        calc: '93px',
        withBack: '57px'
      },
      height: {
        calc: '93px',
      },
      scale: {
        '25': '.25',
      },
      maxWidth: {
        'full-screen': '100vw',
      }
    },
  },
  variants: {
    extend: {
      backgroundColor: ['odd','even'],
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/aspect-ratio'),
  ],
}