----------------- Considerações gerais: -----------------

- Pus o 'Contacto' e 'Hobbies' do Cliente, 'Categoria' da Viagem e 'Contacto' do Hotel como atributos multivalorados. A meu ver, não aumenta muito a complexidade, não sei como é ao nível do ETL, mas tentei fazer tudo direitinho. Mudem o que quiserem! Pode-se considerar que um cliente só tem um contacto, por exemplo

- No Voo, a maneira mais simples de evitar uma nova entidade Partida ou Destino foi desdobrar em 4 atributos (PaísPartida, ContinentePartida, PaísDestino, ContinenteDestino)

- Considera-se que uma viagem é tipo um pack. Considera-se também que não há limites de packs, caso contrário tinhamos que pôr um atributo decrementável

- Na Venda, 'Valor' é o valor somado de todas as viagens e é derivado, tal como 'NrViagens' -> a explicação destes atributos está no dicionário

- Na Viagem, o 'Preço' é o preço individual. A Época tem os valores N, P, F, O (explicado no dicionario)

- No modelo lógico aparece TINYINT em vez de BOOLEAN no 'Estado' da Viagem


----------------> Concordo com tudo o que alterarem, deixei os modelos por isso podem alterar vocês ou peçam-me para alterar 