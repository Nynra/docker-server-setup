# Deploy gitlab with 2 runners and 1 registry
# source: https://docs.gitlab.com/ee/install/docker.html#install-gitlab-using-docker-swarm-mode
echo "external_url 'https://my.domain.com/'" > gitlab.rb
echo "gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password').gsub("\n", "")" >> gitlab.rb

read -p "Enter the GitLab root password: " -s GITLAB_ROOT_PASSWORD
echo $GITLAB_ROOT_PASSWORD > root_password.txt

docker stack deploy --compose-file docker-compose.yml gitlab