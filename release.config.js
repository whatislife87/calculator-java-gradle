const config = {
  branches: ['main'],
  plugins: [
    '@semantic-release/commit-analyzer',
    {
      "preset": "angular",
      "releaseRules": [
        {"type": "docs", "release": "patch"},
        {"type": "style", "release": "patch"},
        {"type": "refactor", "release": "patch"},
        {"type": "perf", "release": "patch"},
        {"type": "test", "release": "patch"},
        {"type": "build", "release": "patch"},
        {"type": "ci", "release": "patch"},
        {"type": "fix", "release": "patch"},
        {"type": "feat", "release": "minor"},
        {"type": "major", "release": "major"}  // Nueva etiqueta para major
      ]
    },
    '@semantic-release/release-notes-generator',
    ["@semantic-release/git", {
      "assets": ["dist/*.js", "dist/*.js.map"],
      "message": "chore(release): ${nextRelease.version} [skip ci]\n\n${nextRelease.notes}"
    }],
    '@semantic-release/github'
  ]
};

module.exports = config;
