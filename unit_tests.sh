  #!/bin/sh

  export USE_SYSTEM_GECODE=1
  bundle install
  [[ $? == 0 ]] || exit 1
  bundle exec berks install
  [[ $? == 0 ]] || exit 1
  bundle exec rake style spec
  [[ $? == 0 ]] || exit 1