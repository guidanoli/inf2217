fof(passage_definition, axiom,
    ! [P] : passage(P) <=> P = p1 | P = p2 | P = p3).

fof(one_message_is_correct, axiom,
    ? [P] : passage(P) & correct(P)).

fof(only_one_message_is_correct, axiom,
    ! [P1, P2] : correct(P1) & correct(P2) => P1 = P2).

fof(one_passage_has_the_exit, axiom,
    ? [P] : passage(P) & exit(P)).

fof(only_one_passage_has_the_exit, axiom,
    ! [P1, P2] : exit(P1) & exit(P2) => P1 = P2).

fof(message1, hypothesis,
    correct(p1) <=> exit(p1)).

fof(message2, hypothesis,
    correct(p2) <=> ~ exit(p2)).

fof(message3, hypothesis,
    correct(p3) <=> ~ exit(p1)).

fof(solution, conjecture,
    correct(p3) & exit(p2)).
