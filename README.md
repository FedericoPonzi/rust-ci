# Template repo for your rust project
This template includes a Github workflow that will:
 * Check the style (rustfmt + cargo clippy)
 * Test your code on rust stable, beta and nightly
 * Publish a new release when you push a tag on master in the form of `v*.*.*`
 * Create a new docker image for master and every release.

# Usage
In order to use this:

* Click on "Use this template" near "Clone or download".
* Open `.github/workflows/release.yml` and replace all occurrences of `rust-ci` with your binary name (try doing cargo build, and look in the target/debug drectory for your binary name).
* If you want to use the push-to-docker step:
  * Add your docker username and password in the secrets of the github repository.
  * Replace `federicoponzi/rust-ci` with the name of your repo/image.
  * You can find the example docker image [here](https://hub.docker.com/repository/docker/federicoponzi/rust-ci)
* If you don't want to use the docker step, you can just safely remove it.
  
> The place that need updated are marked with an "UPDATEME" comment!

### Then:

* When you push any changes, your code will be tested.
* If you want to create a new release, just push a new git tag, for example:

```
git tag v0.0.1 && git push origin --tag
```
You can check the result in the [releases](https://github.com/FedericoPonzi/rust-ci/releases) page.


# TODO
* Figure how to use (cargo) caching.
* Add some static analyzer

PRs are welcome!
