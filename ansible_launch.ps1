$container = "quay.io/tmichett/ansible:aap2.4"
$current_directory = (get-location).path
Write-Output $current_directory
Invoke-Expression "docker run -it --name ansible --rm -v $current_directory`:/ansible $container"