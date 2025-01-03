module.exports = {
  collectCoverageFrom: ["src/**/*.ts", "src/**/*.tsx"],
  coverageReporters: ["text", "html", "cobertura"],
  globals: {
    "ts-jest": {
      tsConfig: "tsconfig.test.json"
    }
  },
  moduleDirectories: ["node_modules", "src"],
  moduleNameMapper: {
    "\\.svg": "<rootDir>/src/__mocks__/svgMock.ts",
    "\\.jpg": "<rootDir>/src/__mocks__/jpgMock.ts"
  },
  preset: "ts-jest",
  setupFilesAfterEnv: ["./tests/setup.ts"]
};