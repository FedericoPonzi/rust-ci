# Template repo for your rust project
This template includes a Github workflow that will:
 * Check the style (rustfmt + cargo clippy)
 * Test your code on rust stable, beta and nightly
 * Publish a new release when you push a tag on master in the form of `v*.*.*`

# Usage
In order to use this:

* Click on "Use this template" near "Clone or download".
* Open `.github/workflows/release.yml` and replace all occurrences of `rust-ci` with your binary name (try doing cargo build, and look in the target/debug drectory for your binary name).

Then:

* When you push any changes, your code will be tested.
* If you want to create a new release, just push a new tag:

```
git tag v0.0.1 && git push origin --tag
```
check the result in the [releases](https://github.com/FedericoPonzi/rust-ci/releases) page.


# TODO
* Figure how to use caching.
* Add some static analyzer
* Add some workflows for docker.
