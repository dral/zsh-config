function man-html() {
  local file="/tmp/$@.html"
  local config="/tmp/manconfig"
  echo "TROFF /usr/bin/groff -Thtml -mandoc -c" > ${config}| man -C ${config} -t "$@" > ${file}; open -a "Google Chrome.app" ${file}
}