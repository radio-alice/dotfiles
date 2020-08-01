
    module.exports.decorateConfig = config => {
      return Object.assign({}, config, {
        cursorColor: 'rgba(46, 172, 255, 0.5)',
        cursorAccentColor: '#00106a',
        foregroundColor: '#d0ddcc',
        backgroundColor: '#00106a',
        selectionColor: 'rgba(255, 200, 245, 0.09999999999999998)',
        borderColor: '#d2ebff',
        colors: {
          black: '#00106a',
          red: '#ff009c',
          green: '#9bdabb',
          yellow: '#ffdd5d',
          blue: '#ffc8f5',
          magenta: '#ff4ab9',
          cyan: '#d2ebff',
          white: '#d0ddcc',
          lightBlack: '#23327a',
          lightRed: '#ffa685',
          lightGreen: '#9bdabb',
          lightYellow: '#ffdd5d',
          lightBlue: '#ffc8f5',
          lightMagenta: '#ff4ab9',
          lightCyan: '#d2ebff',
          lightWhite: '#f3ffdc',
        },
      });
    };
  