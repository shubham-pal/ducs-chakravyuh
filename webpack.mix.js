let mix = require('laravel-mix');
require('laravel-mix-tailwind');
require('laravel-mix-purgecss');

mix.sass('resources/sass/main.sass', 'public/static/css/main.css')
    .tailwind()
    .purgeCss({
        folders: ['public', 'partials', 'resources']
    })
    .browserSync({
        files: ['./**/*.php','./**/*.sass', './**/*.js'],
        proxy: 'chakravyuh.test'
    });