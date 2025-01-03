const path = require('path');

module.exports = {
  env: {
    browser: true,
    es6: true,
  },
  extends: [
    // Create React App eslint eslint configuration
    'react-app',
    'airbnb',
    // Uses the recommended rules from @eslint-plugin-react
    'plugin:react/recommended',
    // Uses the recommended rules from the @typescript-eslint/eslint-plugin
    'plugin:@typescript-eslint/recommended',
    // Uses eslint-config-prettier to disable ESLint rules from @typescript-eslint/eslint-plugin that would conflict with prettier
    'prettier/@typescript-eslint',
    // Accessibility
    'plugin:jsx-a11y/strict',
    // Prettier recommended styles
    'plugin:prettier/recommended',
    // Jest recommended styles
    'plugin:jest/recommended',
  ],
  globals: {
    Atomics: 'readonly',
    SharedArrayBuffer: 'readonly',
  },
  rules: {
    'react/jsx-filename-extension': [1, { extensions: ['.ts', '.tsx'] }],
    // Allow expressions to live on the same line as opening and closing tags (up to one-level deep)
    'react/jsx-one-expression-per-line': [1, { allow: 'single-child' }],
    // Turn off onBlur over onChange rule for select tags to avoid user confusion when using them
    'jsx-a11y/no-onchange': 0,
    'jsx-a11y/label-has-for': 'off',
    'jsx-a11y/label-has-associated-control': [
      2,
      {
        labelComponents: [],
        labelAttributes: [],
        controlComponents: ['Field', 'RadioGroup', 'Radio'],
        depth: 3,
      },
    ],
    'no-console': ['error', { allow: ['info', 'warn', 'error'] }],
  },
  settings: {
    'import/resolver': {
      node: {
        paths: [path.resolve(__dirname, 'src')],
        extensions: ['.js', '.jsx', '.ts', '.tsx', '.svg'],
      },
    },
  },
