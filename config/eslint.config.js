const { defineConfig } = require('eslint/config');
const eslintJs = require('@eslint/js');
const jestPlugin = require('eslint-plugin-jest');
const auraConfig = require('@salesforce/eslint-plugin-aura');
const lwcConfig = require('@salesforce/eslint-config-lwc');
const globals = require('globals');

module.exports = defineConfig([
    // Global jest version
    {
        settings: {
            jest: {
                version: 29
            }
        }
    },

    // Aura configuration
    {
        files: ['**/aura/**/*.js'],
        extends: [
            ...auraConfig.configs.recommended,
            ...auraConfig.configs.locker
        ]
    },

    // LWC configuration
    {
        files: ['**/lwc/**/*.js'],
        extends: [
            ...lwcConfig.configs.extended,
            ...lwcConfig.configs.i18n,
            ...lwcConfig.configs.ssr
        ]
    },

    // LWC configuration with override for LWC test files
    {
        files: ['**/lwc/**/*.test.js'],
        plugins: { jest: jestPlugin },
        rules: {
            ...lwcConfig.configs.extended.rules, 
            ...jestPlugin.configs.recommended.rules,
            '@lwc/lwc/no-unexpected-wire-adapter-usages': 'off'
        },
        languageOptions: {
            globals: {
                ...globals.node,
                ...globals.jest
            }
        }
    },

    // Jest mocks configuration
    {
        files: ['**/jest-mocks/**/*.js'],
        languageOptions: {
            sourceType: 'module',
            ecmaVersion: 'latest',
            globals: {
                ...globals.node,
                ...globals.es2021,
                ...jestPlugin.environments.globals.globals
            }
        },
        plugins: {
            eslintJs
        },
        extends: ['eslintJs/recommended']
    }
]);