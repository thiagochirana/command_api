# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


phrases = [
  {
    text: "Gênio é um por cento inspiração e noventa e nove por cento transpiração.",
    author: "Thomas Edison"
  },
  {
    text: "Você pode observar muito apenas assistindo.",
    author: "Yogi Berra"
  },
  {
    text: "Uma casa dividida contra si mesma não pode subsistir.",
    author: "Abraham Lincoln"
  },
  {
    text: "As dificuldades aumentam quanto mais perto chegamos do objetivo.",
    author: "Johann Wolfgang von Goethe"
  },
  {
    text: "O destino está em suas mãos e de mais ninguém.",
    author: "Byron Pulsifer"
  },
  {
    text: "Seja o chefe, mas nunca o senhor.",
    author: "Lao Tzu"
  },
  {
    text: "Nada acontece a menos que primeiro sonhemos.",
    author: "Carl Sandburg"
  },
  {
    text: "Bem começado é meio caminho andado.",
    author: "Aristóteles"
  },
  {
    text: "A vida é uma experiência de aprendizado, apenas se você aprender.",
    author: "Yogi Berra"
  },
  {
    text: "A autocomplacência é fatal para o progresso.",
    author: "Margaret Sangster"
  },
  {
    text: "A paz vem de dentro. Não a procure fora.",
    author: "Buda"
  },
  {
    text: "O que você dá é o que você recebe.",
    author: "Byron Pulsifer"
  },
  {
    text: "Só podemos aprender a amar amando.",
    author: "Iris Murdoch"
  },
  {
    text: "A vida é mudança. Crescimento é opcional. Escolha sabiamente.",
    author: "Karen Clark"
  },
  {
    text: "Você verá quando acreditar.",
    author: "Wayne Dyer"
  },
  {
    text: "Hoje é o amanhã com o qual nos preocupamos ontem.",
    author: "Sabe lá quem foi..."
  },
  {
    text: "quem programa em Python é guei",
    author: "DevCurumin"
  },
  {
    text: "Java lang de macho",
    author: "DevCurumin"
  },
  {
    text: "Ruby lang de macho",
    author: "DevCurumin"
  },
  {
    text: "https://x.com/DevCurumin <<< Quem não segue é dev bagre amante de Javascript",
    author: "DevCurumin"
  }
]

phrases.each do |phrase|
  Phrase.create(phrase)
end