# gem template

This is a GitHub template for creating Ruby gems. Press [**Use this template**](https://github.com/phsnlam/ceph-client/generate) to generate a project from this template. In the generated project, run this script to rename the gem to meet your needs:

```
$ ruby rename_template.rb
```

This template is based on `bundle gem` with some notable improvements:

- Circle CI configuration
- Minitest, with minitest-reporters for nicely formatted test output
- Rubocop with a good set of configuration
- [release-drafter](https://github.com/apps/release-drafter) GitHub Action for automating release notes
- A `rake bump` task to keep your Ruby and Bundler dependencies up to date
- A nice README with badges ready to go (see below)

---

<!-- END FRONT MATTER -->

# ceph-client

[![Gem Version](https://badge.fury.io/rb/ceph-client.svg)](https://rubygems.org/gems/ceph-client)
[![Circle](https://circleci.com/gh/phsnlam/ceph-client/tree/main.svg?style=shield)](https://app.circleci.com/pipelines/github/phsnlam/ceph-client?branch=main)
[![Code Climate](https://codeclimate.com/github/phsnlam/ceph-client/badges/gpa.svg)](https://codeclimate.com/github/phsnlam/ceph-client)

TODO: Description of this gem goes here.

---

- [Quick start](#quick-start)
- [Support](#support)
- [License](#license)
- [Code of conduct](#code-of-conduct)
- [Contribution guide](#contribution-guide)

## Quick start

```
$ gem install ceph-client
```

```ruby
require "ceph/client"
```

## Support

If you want to report a bug, or have ideas, feedback or questions about the gem, [let me know via GitHub issues](https://github.com/phsnlam/ceph-client/issues/new) and I will do my best to provide a helpful answer. Happy hacking!

## License

The gem is available as open source under the terms of the [MIT License](LICENSE.txt).

## Code of conduct

Everyone interacting in this project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](CODE_OF_CONDUCT.md).

## Contribution guide

Pull requests are welcome!
