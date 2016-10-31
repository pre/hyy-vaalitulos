
HYYn vaalitulospalvelu
======================

- Files are served by Amazon S3

- New election results will be stored in S3 by the Electoral System in /year/ folder:
  - result.html (complete results)
  - candidates.json
  - result.json


## Setup

- Install dependencies:
  `bundle install`

- Start Jekyll server for development:
  `./server.js`

- Setup AWS credentials in `_jekyll_s3.yml`
  - Example of contents: [_jekyll_s3.yml.example](_jekyll_s3.yml.example)

- Deploy:
  `jekyll-s3`
