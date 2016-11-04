# remember-bower

When upgrading dependencies in a project which includes both __package.json__
and __bower.json__, it's easy to forget to update the latter. `remember-bower`
is a simple command-line utility which solves this problem.

```console
$ node_modules/.bin/remember-bower $(pwd)
"sanctuary-type-classes" specified as 1.0.x in package.json but as 0.3.x in bower.json

$ echo $?
1
```

A project may have dependencies which are applicable to Bower but not to Node
(or vice versa).

```console
$ node_modules/.bin/remember-bower $(pwd)
"foo" specified in bower.json but not in package.json
"bar" specified in bower.json but not in package.json

$ echo $?
1
```

`--exclude` may be used to permit such discrepancies.

```console
$ node_modules/.bin/remember-bower --exclude foo --exclude bar $(pwd)

$ echo $?
0
```

`remember-bower` should be run as part of a project's automated tests. Having
to *remember* to remember Bower would defeat the point. ;)
