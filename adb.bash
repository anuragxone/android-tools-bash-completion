# adb completion                                           -*- shell-script -*-

# This bash completions script was generated by
# completely (https://github.com/dannyben/completely)
# Modifying it manually is not recommended

_adb_completions_filter() {
  local words="$1"
  local cur=${COMP_WORDS[COMP_CWORD]}
  local result=()

  if [[ "${cur:0:1}" == "-" ]]; then
    echo "$words"
  
  else
    for word in $words; do
      [[ "${word:0:1}" != "-" ]] && result+=("$word")
    done

    echo "${result[*]}"

  fi
}

_adb_completions() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  local compwords=("${COMP_WORDS[@]:1:$COMP_CWORD-1}")
  local compline="${compwords[*]}"

  case "$compline" in
    'install-multi-packages'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_adb_completions_filter "-l -r -t -s -d -p -g --abi --instant --no-streaming --streaming --fastdeploy --no-fastdeploy --force-agent --date-check-agent --version-check-agent --local-agent")" -- "$cur" )
      ;;

    'forward --no-rebind'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "tcp: localreserved: localfilesystem: jdwp: vsock: acceptfd:")" -- "$cur" )
      ;;

    'reverse --no-rebind'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "tcp: localabstract: localreserved: localfilesystem:")" -- "$cur" )
      ;;

    'install-multiple'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_adb_completions_filter "-l -r -t -s -d -p -g --abi --instant --no-streaming --streaming --fastdeploy --no-fastdeploy --force-agent --date-check-agent --version-check-agent --local-agent")" -- "$cur" )
      ;;

    'uninstall'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "-k")" -- "$cur" )
      ;;

    'bugreport'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -A directory -- "$cur" )
      ;;

    'devices'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "-l")" -- "$cur" )
      ;;

    'forward'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "--list --no-rebind --remove --remove-all")" -- "$cur" )
      ;;

    'reverse'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "--list --no-rebind --remove --remove-all")" -- "$cur" )
      ;;

    'push -z'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "any none brotli lz4 zstd")" -- "$cur" )
      ;;

    'pull -z'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "any none brotli lz4 zstd")" -- "$cur" )
      ;;

    'install'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -W "$(_adb_completions_filter "-l -r -t -s -d -g --abi --instant --no-streaming --streaming --fastdeploy --no-fastdeploy --force-agent --date-check-agent --version-check-agent --local-agent")" -- "$cur" )
      ;;

    'logcat'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "--help")" -- "$cur" )
      ;;

    'keygen'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A file -- "$cur" )
      ;;

    'shell'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "-e -n -T -t -x")" -- "$cur" )
      ;;

    'mdns'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "check services")" -- "$cur" )
      ;;

    'push'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "--sync -n -z -Z")" -- "$cur" )
      ;;

    'pull'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "-a -z -Z")" -- "$cur" )
      ;;

    'sync'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "-n -l -z -Z")" -- "$cur" )
      ;;

    *)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_adb_completions_filter "-a -d -e -s -t -H -P -L --one-device --exit-on-write-error devices help version connect disconnect pair forward reverse mdns push pull sync shell emu install install-multiple install-multi-package uninstall bugreport jdwp logcat disable-verity enable-verity keygen")" -- "$cur" )
      ;;

  esac
} &&
complete -F _adb_completions adb

# ex: filetype=sh
