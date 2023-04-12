fof(person_definition, axiom,
    ! [P] : person(P) <=> P = arthur | P = bernardo | P = cesar).

fof(model_definition, axiom,
    ! [M] : model(M) <=> M = brasilia | M = parati | M = santana).

fof(color_definition, axiom,
    ! [C] : color(C) <=> C = grey | C = green | C = blue).

% we use the same predicate 'drive' for model and color because they are
% disjoint sets, and it makes it easier to work with only one predicate.

fof(drives_injective_model, axiom,
    ! [P] : person(P) => ? [M] : model(M) & drives(P,M)).

fof(drives_injective_color, axiom,
    ! [P] : person(P) => ? [C] : color(C) & drives(P,C)).

fof(drives_surjective, axiom,
    ! [K, P1, P2] : drives(P1,K) & drives(P2,K) => P1 = P2).

fof(h1, hypothesis,
    drives(arthur,grey)).

fof(h2, hypothesis,
    drives(cesar,santana)).

fof(h3, hypothesis,
    ~ drives(bernardo,green)).

fof(h4, hypothesis,
    ~ drives(bernardo,brasilia)).

fof(solution, conjecture,
    drives(arthur,brasilia) & drives(arthur,grey) &
    drives(bernardo,parati) & drives(bernardo,blue) &
    drives(cesar,santana) & drives(cesar,green)).
