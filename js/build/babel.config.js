export default {
  presets: [
    [
      "@babel/preset-env",
      {
        modules: false,
        loose: true
      }
    ]
  ],
  plugins: [
    "@babel/plugin-proposal-object-rest-spread"
  ],
  exclude: "node_modules/**"
};
