fof(brother_definition, axiom,
    ! [B] : brother(B) <=> B = joao | B = eduardo | B = ricardo).

fof(some_brother_broke_the_glass, axiom,
    ? [B] : brother(B) & broke_the_glass(B)).

fof(only_brothers_broke_the_glass, axiom,
    ! [B] : broke_the_glass(B) => brother(B)).

fof(some_brother_is_telling_the_truth, axiom,
    ? [B] : brother(B) & is_telling_the_truth(B)).

fof(only_one_brother_is_telling_the_truth, axiom,
    ! [B1, B2] : is_telling_the_truth(B1) & is_telling_the_truth(B2) => B1 = B2).

fof(eduardo_is_lying, axiom,
    ~ is_telling_the_truth(eduardo)).

fof(joaos_testimony, hypothesis,
    is_telling_the_truth(joao) <=> broke_the_glass(ricardo)).

fof(eduardos_testimony, hypothesis,
    is_telling_the_truth(eduardo) <=> broke_the_glass(eduardo)).

fof(ricardos_testimony, hypothesis,
    is_telling_the_truth(ricardo) <=> broke_the_glass(eduardo)).

fof(solution, conjecture,
    ~ is_telling_the_truth(ricardo) & broke_the_glass(ricardo)).
