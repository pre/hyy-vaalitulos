
HYYn vaalitulospalvelu
======================

- Files are served by Amazon S3

- New election results will be stored in S3 by the Electoral System in /year/ folder:
  - result.html (complete results)
  - candidates.json
  - result.json

- See `git show 9236fe` for an example how to setup a new election year.


## Setup

- Install dependencies:
  - See .ruby-version for VERSION, then
   `rvm install VERSION && cd .. && cd -`
  - `gem install bundler`
  - `bundle install`

- Start Jekyll server for development:
  `./server.js`

- Setup AWS credentials in `_jekyll_s3.yml`
  - Example of contents: [_jekyll_s3.yml.example](_jekyll_s3.yml.example)

- Deploy:
  `jekyll-s3`

  - Answer [K]eep all when asked about keeping old files:
  `xyz/ is on S3 but not in your _site directory anymore. Do you want to [d]elete, [D]elete all, [k]eep, [K]eep all?`
  - These are eg. old temporary result files, which are in S3 but not in
    this repo.
