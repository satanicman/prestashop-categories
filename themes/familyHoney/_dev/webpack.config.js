const path = require("path");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const TerserPlugin = require("terser-webpack-plugin");

const config = {
    entry: {
        main: [
            './js/theme.js',
            './css/theme.scss'
        ]
    },
    output: {
        path: path.resolve(__dirname, '../assets/js'),
        filename: 'theme.js'
    },
    devtool: 'source-map',
    externals: {
        prestashop: 'prestashop',
        $: '$',
        jquery: 'jQuery'
    },
    optimization: {
        minimizer: [
            new TerserPlugin({
                sourceMap: true,
                extractComments: true
            })
        ]
    },
    module: {
        rules: [
            {
                test: /\.js/,
                loader: 'babel-loader'
            },
            {
                test: /\.(sass|scss)$/,
                use: [
                    {
                        loader: MiniCssExtractPlugin.loader,
                        options: {}
                    },
                    {
                        loader: "css-loader",
                        options: {
                            sourceMap: true
                        }
                    },
                    {
                        loader: "postcss-loader",
                        options: {
                            ident: "postcss",
                            sourceMap: true,
                            plugins: () => [
                                require("cssnano")({
                                    preset: [
                                        "default",
                                        {
                                            discardComments: {
                                                removeAll: true
                                            }
                                        }
                                    ]
                                }),
                                require('autoprefixer')
                            ]
                        }
                    },
                    {
                        loader: "sass-loader",
                        options: {
                            sourceMap: true
                        }
                    }
                ]
            },
            {
                test: /.(png|woff(2)?|eot|ttf|svg|gif)(\?[a-z0-9=\.]+)?$/,
                use: [
                    {
                        loader: 'file-loader',
                        options: {
                            name: '../fonts/[name]/[hash].[ext]'
                        }
                    }
                ]
            },
        ]
    },
    plugins: [
        new MiniCssExtractPlugin({
            filename: path.join('..', 'css', 'theme.css')
        })
    ]
};

module.exports = (env, argv) =>
{
    if (argv.mode === "production")
    {
        config.plugins.push(
            new webpack.optimize.UglifyJsPlugin({
                sourceMap: false,
                compress: {
                    sequences: true,
                    conditionals: true,
                    booleans: true,
                    if_return: true,
                    join_vars: true,
                    drop_console: true
                },
                output: {
                    comments: false
                },
                minimize: true
            })
        );
    }
    return config;
};
