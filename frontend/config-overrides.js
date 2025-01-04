const { paths } = require('react-app-rewired');

module.exports = {
  jest: (config) => {
    // Merge custom Jest config with react-scripts' defaults
    const customConfig = require('./jest.config.js');

    return {
      ...config,
      ...customConfig,
      setupFilesAfterEnv: [
        ...(config.setupFilesAfterEnv || []),
        ...(customConfig.setupFilesAfterEnv || []),
      ],
      moduleNameMapper: {
        ...config.moduleNameMapper,
        ...customConfig.moduleNameMapper,
      },
      transformIgnorePatterns:
        customConfig.transformIgnorePatterns || config.transformIgnorePatterns,
    };
  },
};
