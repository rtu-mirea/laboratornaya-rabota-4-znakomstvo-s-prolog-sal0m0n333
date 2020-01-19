  
domains
	s=symbol
predicates
	nondeterm doctor(s).
	nondeterm pacient(s).
	speciality(s,s).
	nondeterm ill(s,s).
	nondeterm has_pacients(s).
clauses
	doctor(john).
	doctor(alexander).
	doctor(sergey).
	pacient(jill).
	pacient(marina).
	pacient(kate).
	speciality(alexander,dysentery).
	speciality(sergey,plague).
	speciality(john,smallpox).
	ill(marina,smallpox).
	ill(kate,plague).
	ill(jill,dysentery).
	has_pacients(X):- doctor(X), pacient(Z), speciality(X,Y), ill(Z,Y).
goal
	has_pacients (Who).