module.exports = {
  title: 'Sysmart Docs',
  tagline: 'Base de conhecimento do sistema',
  url: 'https://seu-usuario.github.io',
  baseUrl: '/sysmart-docs/',
  presets: [
    [
      'classic',
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
        },
      }),
    ],
  ],
};
