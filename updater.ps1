$hostname = "myhost.now-dns.org"
$user = "user@example.com"
$pass = "password"

$url = "https://now-dns.com/update?hostname=${hostname}"

$pair = "${user}:${pass}"
$bytes = [System.Text.Encoding]::ASCII.GetBytes($pair)
$base64 = [System.Convert]::ToBase64String($bytes)
$basicAuthValue = "Basic $base64"
$headers = @{ Authorization = $basicAuthValue }

Invoke-WebRequest -uri $url -Headers $headers
