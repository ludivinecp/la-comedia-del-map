# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Play.create([{ title: 'Tartuffe',
               date_start: 10/02/16,
               date_end: 10/02/16,
               synopsys: "L’auteur nous fait pénétrer au sein d’une famille honnête et paisible, tout à coup troublée et désunie par 
la seule présence d’un étranger hypocrite et faux dévot. Tartufe, qui a su s’emparer de l’esprit de la grand-mère, Mme Pornelle, et de
 son fils, Orgon, qui donne asile au pieux personnage.
",
           theater_id: 1
}])
Play.create([{ title: 'La grande évasion',
           date_start: 18/02/16,
           date_end: 18/02/16,
           synopsys: "elle ci devant se faire devant le ministre de la justice en visite à la prison. 
De répétitions foireuses en tentatives improbables, ils vont nouer une complicité joueuse et délirante.
A défaut de scier les barreaux, les voilà partis pour une évasion artistique....",
           theater_id: 1
}])
Play.create([{ title: 'Le clan des divorcées',
           date_start: 11/02/16,
           date_end: 11/02/16,
           synopsys: "Trois femmes divorcent et partagent le même appartement, Stéphanie d'Humilly de Malanpry la bourgeoise, Mary Bybowl la british délurée et Brigitte la rurale. Stéphanie d'Humily de Malanpry, une bourgeoise qui vient de quitter un berger ardéchois décide de changer de vie en partant...",
           theater_id: 1
}])


Actor.create([{ firstname: "Jessica",
                lastname: "Mompiou",
                date_birth: 03/03/88,
                is_male: false,
                play_id: 1
}])
Actor.create([{ firstname: "Arsène",
                lastname: "Mosca",
                date_birth: 10/05/90,
                is_male: true,
                play_id: 2
}])
Actor.create([{ firstname: "Anne",
                lastname: "Bernex",
                date_birth: 11/10/76,
                is_male: false,
                play_id: 3
}])

Theater.create([{ name: "Théâtre principal",
                  number_of_places: 350,
                  availibility_from: 12/02/16,
                  availibility_to: 16/03/16
}])


User.create([{ email: 'admin@wcs.com',
              password: 'azertyui',
              admin: true
  }])

User.create([{ email: 'user@wcs.com',
              password: 'azertyui',
  }])

