all: compile

compile-dev:
  compass compile -s expanded

compile:
  compass compile -e production --force

clip-dev: compile-dev
  cat stylesheets/rdiablo.css > /dev/clipboard

clip: compile
  cat stylesheets/rdiablo.css > /dev/clipboard

release: clean clip

clean:
  rm -f style.css
  rm -rf stylesheets/