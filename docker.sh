set -e
use-desktop() {
  kubectl config use-context docker-desktop
}
$@
