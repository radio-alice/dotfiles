
    module.exports.decorateConfig = config => {
      return Object.assign({}, config, {
        cursorColor: 'rgba(46, 172, 255, 0.5)',
        cursorAccentColor: '#150049',
        foregroundColor: '#c8bde5',
        backgroundColor: '#150049',
        selectionColor: 'rgba(255, 200, 245, 0.09999999999999998)',
        borderColor: '#d2ebff',
        colors: {
          black: '#150049',
          red: '#ff009c',
          green: '#9bdabb',
          yellow: '#fff3c5',
          blue: '#ffc8f5',
          magenta: '#ff4ab9',
          cyan: '#d2ebff',
          white: '#c8bde5',
          lightBlack: '#331f63',
          lightRed: '#ffa685',
          lightGreen: '#9bdabb',
          lightYellow: '#fff3c5',
          lightBlue: '#ffc8f5',
          lightMagenta: '#ff4ab9',
          lightCyan: '#d2ebff',
          lightWhite: '#e6dcff',
        },
      });
    };
  