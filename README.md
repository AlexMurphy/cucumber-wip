#cucumber-wip

##Installation:

###Install Bundler

```
gem install bundler
```

###Bundle install the Gem file

cd to the acceptance_tests folder

```
bundle install
```

##Run:

Run with
```
cucumber
```
or to run specific features
```
cucumber features/example.feature
```
## Parallel Running:

Run with
```
bundle exec parallel_cucumber features/
```

or to specify the number or parallel processes
```
bundle exec parallel_cucumber features/ -n 8
```

##Yard:

Using YARD-Cucumber you can generate documentation on the features, tags and step definitions used in these tests

###Run:
Running the following from outside the acceptance_tests folder generates the documentation
```
yardoc 'features/**/*.rb' '**/*.feature'
```
Then run the following to start the local documentation server
```
yard server
```
