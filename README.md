# agri_web
## version
- ruby 2.4.0
- Rails 5.1.1
- node 7.9.0
- webpack & vuejs
## setup
`git clone git@github.com:rarky09/agrihack.git`

`bundle install`

mysql
`CREATE DATABASE `agrihack_test` DEFAULT CHARACTER SET `utf8mb4` COLLATE `utf8mb4_bin`;`

`CREATE DATABASE `agrihack_development` DEFAULT CHARACTER SET `utf8mb4` COLLATE `utf8mb4_bin`;`

`grant all privileges on agrihack_test.* to 'agrihack'@'%' identified by 'agrihack';`

`grant all privileges on agrihack_development.* to 'agrihack'@'%' identified by 'agrihack';`

`rake db:setup`