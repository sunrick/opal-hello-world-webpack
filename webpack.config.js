const path = require('path')
const OwlResolver = require('opal-webpack-loader/resolver')

module.exports = {
  entry: './src/index.js',
  mode: 'development',
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'dist')
  },
  devServer: {
    contentBase: './dist'
  },
  resolve: {
    plugins: [
      // this makes it possible for webpack to find ruby files
      new OwlResolver('resolve', 'resolved')
    ]
  },
  module: {
    rules: [
      {
        test: /.(rb|js.rb)$/,
        use: [
          {
            loader: 'opal-webpack-loader',
            options: {
              sourceMap: false,
              hmr: true,
              hmrHook: ''
            }
          }
        ]
      }
    ]
  }
}
