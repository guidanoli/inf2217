fof(sister_definition, axiom,
    ! [S] : sister(S) <=> S = ana | S = maria | S = claudia).

fof(dress_definition, axiom,
    ! [D] : dress(D) <=> D = blue | D = white | D = black).

fof(wears_injective, axiom,
    ! [S] : sister(S) => ? [D] : dress(D) & wears(S,D)).

fof(wears_surjective, axiom,
    ! [S1, S2, D] : wears(S1,D) & wears(S2,D) => S1 = S2).

fof(what_blue_said, hypothesis,
    correct(blue) <=> wears(ana,white)).

fof(what_white_said, hypothesis,
    correct(white) <=> wears(maria,white)).

fof(what_black_said, hypothesis,
    correct(black) <=> wears(claudia,white)).

fof(ana_is_always_correct, hypothesis,
    ! [D] : dress(D) & wears(ana,D) => correct(D)).

fof(claudia_is_never_correct, hypothesis,
    ! [D] : dress(D) & wears(claudia,D) => ~ correct(D)).

fof(truth, conjecture,
    wears(ana,black) & wears(maria,blue) & wears(claudia,white)).
