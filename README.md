# Template repo for your rust project
This template includes a Github workflow that will:
 * Check the style (rustfmt + cargo clippy)
 * Test your code on rust stable, beta and nightly
 * Publish a new release when you push a tag on master in the form of `v*.*.*'

In order to use this:

* Just click on "Use as a template".
* Open .github/workflows/release.yml and replace all occurrences of `rust-ci` with your binary name (try doing cargo build, and look in the target/debug drectory for your binary name).

When you push any changes, your code will be only tested.
If you want to create a new release, just push a new tag:

   git tag v0.0.1 && git push origin --tag
