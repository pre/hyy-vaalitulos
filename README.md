
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

- Setup AWS credentials in `_jekyll_s3.yml`:
~~~
  s3_id: AWS Access Key ID
  s3_secret: AWS Secret Access Key
  s3_bucket: vaalitulos.hyy.fi (or vaalitulos-staging)
~~~

- Deploy:
  `jekyll-s3`
