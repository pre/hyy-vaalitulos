
HYYn vaalitulospalvelu
======================

- Files are served by Amazon S3

- New election results will be stored in S3 by the Electoral System in /year/ folder:
  - result.html (complete results)
  - candidates.json
  - result.json

- See `git show 271b3a6` for an example how to setup a new election year.
  - Copy misc/placeholder-result.html to YYYY/result.html in S3
    by copying the file and running bin/deploy,
    but don't commit it to git under YYYY/result.html to not accidentally overwrite the actual
    result after it has been published.
  - Add generated files from AWS S3 to git immediately after the elections have ended.


## Setup

- Install dependencies:
  - See .ruby-version for VERSION, then
   `rvm install VERSION && cd .. && cd -`
  - `gem install bundler`
  - `bundle install`

- Start Jekyll server for development:
  `bin/serve`

- Setup AWS credentials for aws-cli (`brew install awscli`):
  - Run `aws configure`, or create `~/.aws/credentials` manually:

    ```ini
    [default]
    aws_access_key_id = AKIAXXXXXXXXXXXXXXXX
    aws_secret_access_key = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    ```

    These are the same values previously stored in `_jekyll_s3.yml` as
    `s3_id` / `s3_secret`. To keep the keys separate from other AWS
    accounts, use a named profile instead of `[default]` (e.g.
    `[hyy-vaalitulos]`) and deploy with
    `AWS_PROFILE=hyy-vaalitulos bin/deploy`.
  - Test environment: https://vaalitulos-staging.s3.amazonaws.com/index.html
  - Production environment: http://vaalitulos.hyy.fi/

- Deploy:
  `bin/deploy [bucket]`
  - Defaults to `vaalitulos-staging`; production:
    `bin/deploy vaalitulos.hyy.fi`
  - Files that exist only in S3 (old election results) are never deleted:
    the sync runs without `--delete`.
