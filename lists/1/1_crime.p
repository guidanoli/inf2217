fof(suspects_definition, axiom,
    ! [S] : suspect(S) <=> S = cook | S = housekeeper | S = butler).

fof(someone_is_guilty, axiom,
    ? [G] : guilty(G)).    

fof(every_guilty_person_is_a_suspect, axiom,
    ! [S] : guilty(S) => suspect(S)).

fof(h1, hypothesis,
    ~ guilty(cook) => guilty(housekeeper)).

fof(h2, hypothesis,
    (guilty(butler) | guilty(housekeeper)) & ~ (guilty(butler) & guilty(housekeeper))).

fof(h3, hypothesis,
    guilty(butler)).

fof(solution, conjecture,
    guilty(cook) & ~ guilty(housekeeper) & guilty(butler)).
