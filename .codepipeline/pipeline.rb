stage "Source" do
  github(
    source: "tongueroo/demo-test",
    branch: "master",
    auth_token: ssm("/codebuild/github/tongueroo/oauth_token")
  )
end

# codebuild_prefix "myprefix-"

stage "Build" do
  codebuild "demo"
end

# stage "Deploy" do
#   codebuild "action4"
# end
