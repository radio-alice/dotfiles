
    module.exports.decorateConfig = config => {
      return Object.assign({}, config, {
        cursorColor: 'rgba(237, 0, 144, 0.5)',
        cursorAccentColor: '#d3e5ff',
        foregroundColor: '#302163',
        backgroundColor: '#d3e5ff',
        selectionColor: 'rgba(0, 118, 153, 0.09999999999999998)',
        borderColor: '#750091',
        colors: {
          black: '#d3e5ff',
          red: '#f14100',
          green: '#009892',
          yellow: '#0024f3',
          blue: '#007699',
          magenta: '#0018b1',
          cyan: '#750091',
          white: '#302163',
          lightBlack: '#b8c4e5',
          lightRed: '#00bce1',
          lightGreen: '#009892',
          lightYellow: '#0024f3',
          lightBlue: '#007699',
          lightMagenta: '#0018b1',
          lightCyan: '#750091',
          lightWhite: '#150049',
        },
      });
    };
  