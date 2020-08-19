module.exports = {
  extends: '@snowpack/app-scripts-react',
  plugins: [
    [
      '@snowpack/plugin-run-script',
      {
        cmd: 'bsb -make-world',
        watch: '$1 -w',
      },
    ],
  ],
};
