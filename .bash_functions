# Change directories and view the contents at the same time
function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls -F --color=auto
}

# The mkcd command performs multiple actions:
# - Creates a new directory
# - Changes the current directory to the newly created one
# - Stores the directory in a stack for later access
# The rmcd command reverses these actions:
# - Deletes the directory on top of the stack
# - Navigates to the directory that was active before the mkcd command was
#   executed
mkcd() {
  mkdir -p "${1}"
  export MKCD_LAST_PATH=$(realpath "${1}"):${MKCD_LAST_PATH}
  export MKCD_LAST_CWD=$(realpath .):${MKCD_LAST_CWD}
  cd "${1}"
}

rmcd() {
  last_path=$(echo "${MKCD_LAST_PATH}" | tr -s ':' '\n' | head -n1)
  last_cwd=$(echo "${MKCD_LAST_CWD}" | tr -s ':' '\n' | head -n1)

  if [[ -z "${last_path}" ]]; then
    echo "No last path set. Doing nothing."
    return
  fi

  read -p $'Delete \e[1;31m'${last_path}$'\e[0m (Y/n)? '
  if [[ ! $REPLY =~ ^[Nn]$ ]]; then
    rm -rf "${last_path}"
    cd ${last_cwd}

    MKCD_LAST_PATH=$(echo "$MKCD_LAST_PATH" | tr -s ':' '\n' | tail +2 | tr -s '\n' ':')
    MKCD_LAST_CWD=$(echo "$MKCD_LAST_CWD" | tr -s ':' '\n' | tail +2 | tr -s '\n' ':')
  fi
}
