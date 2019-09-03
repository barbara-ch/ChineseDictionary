# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

h1 = Hanzi.create(character: "中", traditional: "中", stroke: "4", description: "Oryginalnie 中 oznaczało 'bycie pośrodku lu centralną część'. W starożytnych Chinach chorągwie składały się z kliku wstęg. W inskrypcjach wróżebnych i na brązach 中 wyobraża długie wstęgi poruszające się na wietrze oraz okrągły lub kwadratowy drewniany blok, umieszczony pośrodku masztu, w celu zwiększenia odporności masztu i to właśnie ten blok nazywany był 中 (środek)")

h2 = Hanzi.create(character: "种", traditional: "種", stroke: "9", description: "Skłąda się z 禾 i 中)")

h3 = Hanzi.create(character: "天", traditional: "天", stroke: "4", description: "Znak 天 we wczesnych formach inskrypcji wróżebnych i na brązach przypominał ludzką sylwetkę z wielką głową. W piśmie małopieczęciowym 'głowa człowieka' została zastąpiona poziomą kreską. Pierwotnie znak oznaczał głowę, później ludzie zaczęłi używać go w kontekście nieba.")
