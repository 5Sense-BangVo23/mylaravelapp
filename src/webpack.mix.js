// webpack.mix.js

const mix = require('laravel-mix');

mix.setPublicPath('http://localhost:8001/');
mix.css('resources/css/app.css', 'public/css').version();

mix.sourceMaps(); // Enable source maps for better debugging

mix.webpackConfig({
    resolve: {
        extensions: ['.js', '.json', '.vue', '.scss'], // Add '.scss' to resolve extensions
    },
});
