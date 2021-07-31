# Learn Clojure by Example

Learn Clojure by following [clojure-by-examples]

[clojure-by-examples]: https://kimh.github.io/clojure-by-example/#about


# Preparing development environment

```
mkdir app
docker-compose up -d
```

Create the project $APP by running

```
make new
```

Add the below code to `app/$APP/project.clj`

```
  :plugins [[cider/cider-nrepl "0.24.0"]]
  :repl-options {:port 44444}
```

Open a new terminal and run

````
make repl
````
This opens up an nrepl server in the container and exposes it at port 44444
