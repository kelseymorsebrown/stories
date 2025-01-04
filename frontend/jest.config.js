/** @type {import('jest').Config} */
module.exports = {
  roots: ['<rootDir>/tests', '<rootDir>/src'],
  testEnvironment: 'jsdom', // Simulates a browser environment
  collectCoverageFrom: ['src/**/*.ts', 'src/**/*.tsx'],
  coverageReporters: ['text', 'html', 'cobertura'],
  testMatch: ['<rootDir>/tests/**/*.{spec,test}.{js,jsx,ts,tsx}'],
  moduleNameMapper: {
    '\\.svg': '<rootDir>/src/__mocks__/svgMock.ts',
    '\\.jpg': '<rootDir>/src/__mocks__/jpgMock.ts',
    '^@/(.*)$': '<rootDir>/src/$1', // Resolve paths like "@/components"
  },
  setupFilesAfterEnv: ['<rootDir>/tests/setup.ts'],
};
