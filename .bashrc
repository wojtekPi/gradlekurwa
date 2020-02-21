set -e

GRADLE_DIR_KUR=~/.gradle

if [ ! -d "$GRADLE_DIR_KUR" ]; then
    echo "ERROR! $GRADLE_DIR_KUR is  not a directory. .gradlekurwa scripts will not works."
    exit 2
fi


alias gradle-clean-caches="echo 'Cleaning gradle caches' && rm -rf $GRADLE_DIR_KUR/caches/*"
alias gradle-clean-daemons="echo 'Cleaning gradle daemons' && rm -rf $GRADLE_DIR_KUR/daemon/*"
alias gradle-clean-all="gradle-clean-caches && gradle-clean-daemons"
