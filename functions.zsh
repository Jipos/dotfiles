server() {
  PORT=${1-8000}
  echo "Using port: $PORT"
  open "http://localhost:$PORT" && python -m http.server $PORT
}


list() {
  svn list https://scm.icts.kuleuven.be/icts/svn/toledo/$1
}

co() {
  svn co https://scm.icts.kuleuven.be/icts/svn/toledo/$1 ${2:-1} --username=u0076006@kuleuven.be
}
