# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   series = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: series.first)

def link_profile_image(image)
	File.open(File.join(Rails.root,'app/assets/images/'+image))
end

mr_robot = Serie.create(
	title: "Mr Robot",
	description: "Elliot est un jeune programmeur anti-social qui souffre d'un trouble du comportement qui le pousse à croire qu'il ne peut rencontrer des gens qu'en les hackant. Il travaille pour une firme spécialisée dans la cyber-sécurité mais un homme connu sous le nom de Mr Robot l'approche un jour pour faire tomber une compagnie surpuissante qui fait partie de celles qu'il doit justement protéger... ",
	profile_image: link_profile_image('mr-robot.jpg'))

black_mirror = Serie.create(
	title: "Black Mirror",
	description: " Chaque épisode de cette anthologie montre la dépendance des hommes vis-à-vis de tout ce qui a un écran... ",
	profile_image: link_profile_image('black-mirror.png'))

the_punisher = Serie.create(
	title: "The Punisher",
	description: "Après s’être vengé de ceux responsables de la mort de sa femme et de ses enfants, Frank Castle décèle un complot qui va bien plus loin que le milieu des criminels newyorkais. Désormais connu à travers toute la ville comme The Punisher, il doit découvrir la vérité sur les injustices qui l’entourent et touchent bien plus que sa seule famille.",
	profile_image: link_profile_image('the-punisher.jpg'))

mr_robot.episodes.create(season: 1, number: 1, title: "A title", description: "A long long description", duration: 40)
mr_robot.episodes.create(season: 1, number: 2, title: "A title", description: "A long long description", duration: 40)
mr_robot.episodes.create(season: 1, number: 3, title: "A title", description: "A long long description", duration: 40)
mr_robot.episodes.create(season: 2, number: 1, title: "A title", description: "A long long description", duration: 40)
mr_robot.episodes.create(season: 2, number: 2, title: "A title", description: "A long long description", duration: 40)
mr_robot.episodes.create(season: 2, number: 3, title: "A title", description: "A long long description", duration: 40)
mr_robot.episodes.create(season: 2, number: 4, title: "A title", description: "A long long description", duration: 40)
mr_robot.episodes.create(season: 3, number: 1, title: "A title", description: "A long long description", duration: 40)
mr_robot.episodes.create(season: 3, number: 2, title: "A title", description: "A long long description", duration: 40)