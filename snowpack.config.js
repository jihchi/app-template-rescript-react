module.exports = {
  extends: '@snowpack/app-scripts-react',
  plugins: [
    '@snowpack/plugin-react-refresh',
    [
      '@snowpack/plugin-run-script',
      {
        cmd: 'bsb -make-world',
        watch: 'bsb -make-world -w',
      },
    ],
  ],
};
