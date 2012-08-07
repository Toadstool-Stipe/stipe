#Stipe Compass Extension
While developing the Toadstool Styleguide framework I realized that we were beginning to build a core series of mixins. It is this core that is the constant between deployments of the Toadstool framework. To better manage this we are in the process of treating this library as a Compass extension and soon to be gem.

##Please don't mind the mess ...
This is a work in progress, if you are following along at home, pull master a lot :D

This project is in rapid development Stipe has not yet been processed into a Gem. Until such time, you need to clone the Stipe project into a sibling directory from the Toadstool project. 

projects
	-- stipe
	-- toadstool
	
To make use of the Stipe gem in it's interim state, there is a secondary `Gemfile.local` file that contains a route to the in-development Stipe library. Using Bundler, run this command `bundle --gemfile Gemfile.local`
