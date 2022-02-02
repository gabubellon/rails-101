const webpack = require('webpack');
const { environment } = require('@rails/webpacker')


environment.plugins.append('ProvidePlugin-jQuery', new webpack.ProvidePlugin({jQuery: 'jquery'}));
environment.plugins.append("Provide", new webpack.ProvidePlugin({
     $: 'jquery/src/jquery',
     jQuery: 'jquery/src/jquery'
}))

module.exports = environment
