masculino(alex).
masculino(igor).
masculino(cristiano).
masculino(fernando).
masculino(joao).
masculino(kemuel).
masculino(osmar):-!.
masculino(marcos).
masculino(quenedis).
feminino(bruna).
feminino(daniela).
feminino(erica).
feminino(helen).
feminino(geovana).
feminino(lilian).
feminino(paola).
feminino(neide).
feminino(renata).
pai(alex, igor).
pai(alex, helen).
pai(alex, geovana).
pai(alex, erica).
pai(cristiano, fernando).
pai(cristiano, joao).
pai(cristiano, kemuel).
pai(cristiano, lilian):-!.
pai(fernando, paola).
pai(fernando, osmar).
pai(fernando, marcos).
pai(marcos, quenedis).
pai(marcos, renata).
mae(bruna, igor).
mae(bruna, helen).
mae(bruna, geovana).
mae(bruna, erica).
mae(daniela, fernando).
mae(daniela, joao).
mae(daniela, kemuel).
mae(daniela, lilian):-!.
mae(erica, paola).
mae(erica, osmar).
mae(erica, marcos).
mae(neide, quenedis):-!.
mae(neide, renata).
irmao(Irmao1, Irmao2):-
                          pai(PessoaPai, Irmao1), pai(PessoaPai, Irmao2), masculino(PessoaPai), Irmao1\=Irmao2,!; mae(PessoaMae, Irmao1),
                          mae(PessoaMae, Irmao2), feminino(PessoaMae), masculino(Irmao1), Irmao1\=Irmao2.

irma(Irma1, Irmao2):-
                          pai(PessoaPai, Irma1), pai(PessoaPai, Irmao2), masculino(PessoaPai), Irma1\=Irmao2, !; mae(PessoaMae, Irma1),
                          mae(PessoaMae, Irmao2), feminino(PessoaMae), feminino(Irma1), Irma1\=Irmao2.







