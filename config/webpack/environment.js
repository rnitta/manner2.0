const { environment } = require('@rails/webpacker')
const elm =  require('./loaders/elm')


const webpack = require('webpack')
environment.plugins.prepend('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))


environment.loaders.append('elm', elm)
module.exports = environment
