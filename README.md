# Bot Saves Princess

1. **https://www.hackerrank.com/challenges/saveprincess** - Princess Peach is trapped in one of the four corners of a square grid. You are in the center of the grid and can move one step at a time in any of the four directions. Can you rescue the princess?

2. **https://www.hackerrank.com/challenges/saveprincess2** - In this version of "Bot saves princess", Princess Peach and bot's position are randomly set. Can you save the princess?


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.


### Installing

A step by step series of examples that tell you have to get a development env running

1. Clone / Download the code
2. You may change gemset in .ruby-gemset if you want.
3. Code is tested in ruby version 2.3.3. It may work in other versions as well. You can change, ruby version in .ruby-version file.
4. Open terminal and cd in root directory.
5. It will create gemset and will ask to install rvm version, if already not installed.
6. Install bundler and gems:

```
gem install bundler
bundle install
```

## Running the tests

Please run command:

```
rspec
```

### Break down into end to end tests

There are 3 rspec files to test code of 3 classes.

***Bot Saves Princess*** - bot_saves_princess_test.rb file test code for method display_path_to_princess in BotSavesPrincess class in lib/bot_saves_princess.rb file.
To test with more test cases, you can change params in bot_saves_princess_test.rb with expected output.


***Bot Saves Princess 2*** - bot_next_move_test.rb file test code for method next_move in BotNextMove class in lib/bot_next_move.rb file.
To test with more test cases, you can change params in bot_saves_princess_test.rb with expected output.
params are passed as mentioned in requirement.

***Super class Grid*** - Grid class has a method that is being used by both classes / puzzles. It has method position_difference which return an array of difference in position of bot and princess. This row and column difference is being used by BotSavesPrincess and BotNextMove classes.

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc

