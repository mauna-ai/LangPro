	
sen_id_latex(S, Id) :-
	sen_id(Id, Prob_Id, Class, Answer, Sentence),
	write(S, '  \\begin{spverbatim}\n    '),
	atomic_list_concat([Id, ' (', Prob_Id, ', ', Class, ', ', Answer, '): '], Atom), 
	write(S, Atom),
	write(S, Sentence), nl(S),
	write(S, '  \\end{spverbatim}\n').



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% prints latex preambule for ttTerms 
latex_ttTerm_preambule(S) :-
	write(S, '\\documentclass[landscape]{article}\n'),
	write(S, '\\setlength\\textwidth{10in}\n'),
	write(S, '\\setlength\\textheight{8.5in}\n'),
	write(S, '\\setlength\\oddsidemargin{-.5in}\n'),
	write(S, '\\setlength\\evensidemargin{-.5in}\n'),
	write(S, '\\setlength\\topmargin{-.7in}\n'),
	write(S, '\\setlength\\headsep{0in}\n'),
	write(S, '\\setlength\\headheight{0in}\n'),
	write(S, '\\setlength\\topskip{0in}\n'),
	write(S, '\\usepackage{tikz-qtree-compat}\n'),
	write(S, '\\usepackage{spverbatim}\n'),
	write(S, '\\usepackage{amssymb}\n'),
	write(S, '\\usepackage{rotating}\n'),
	write(S, '\\usepackage{color}\n'),
	write(S, '\\usepackage{environ}\n'),
	write(S, '\\usepackage{graphicx}\n'), 	% new
	write(S, '\\usepackage{calc}\n'), 		% new
/*	write(S, '\\makeatletter\n'),
	write(S, '\\newsavebox{\\measure@tikzpicture}\n'),
	write(S, '\\NewEnviron{scaletikzpicturetowidth}[1]{%\n'),
  	write(S, '  \\def\\tikz@width{#1}%\n'),
  	write(S, '  \\def\\tikzscale{1}\\begin{lrbox}{\\measure@tikzpicture}%\n'),
  	write(S, '  \\BODY\n'),
  	write(S, '  \\end{lrbox}%\n'),
  	write(S, '  \\pgfmathparse{#1/\\wd\\measure@tikzpicture}%\n'),
  	write(S, '  \\edef\\tikzscale{\\pgfmathresult}%\n'),
  	write(S, '  \\BODY\n'),
	write(S, '}\n'),
	write(S, '\\makeatother\n'). % old format */
	write(S, '\n\\newlength{\\xsize}\n\\newlength{\\ysize}\n\\newsavebox{\\tempbox}\n\n'),
	write(S, '\\newcommand{\\maxsize}[1]{\n  \\savebox{\\tempbox}{#1}\n  \\settoheight{\\ysize}{\\usebox{\\tempbox}}\n'),
	write(S, '  \\settowidth{\\xsize}{\\usebox{\\tempbox}}\n  \\pgfmathparse{\\xsize/\\textwidth > \\ysize/\\textheight}\n'),
	write(S, '  \\if \\pgfmathresult1\n    \\resizebox{\\textwidth}{!}{\\usebox{\\tempbox}}\n  \\else\n'),
	write(S, '    \\resizebox{!}{\\textheight-2cm}{\\usebox{\\tempbox}}\n  \\fi\n}\n\n').




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% prints complete ttTerm in latex tikzpicture fashion
latex_ttTerm_print_tree(S, Pos, TTterm) :-
	%write(S, '  \\begin{scaletikzpicturetowidth}{\\textwidth}\n'),	 %old
	%write(S, '  \\begin{tikzpicture}[scale=\\tikzscale, baseline=0pt, grow=down]\n'), % old
	write(S, '\\noindent\\maxsize{\n\\begin{tikzpicture}[grow=down]\n'), % new
    write(S, '\\tikzset{level distance = 25pt, sibling distance = -5pt}\n'),
	write(S, '\\tikzset{every tree node/.style={align=center,anchor=north}}\n'),
    write(S, '\\Tree\n'),
	%write('input to latex_ttTerm_print: '), write(TTterm), write('\n'),	
	latex_ttTerm_print(S, Pos, TTterm),
	%write('output from latex_ttTerm_print: '), write(TTterm), write('\n'),
	write(S, '\\end{tikzpicture}\n'),
	%write(S, '  \\end{scaletikzpicturetowidth}\n'),	% old
	write(S, '}\n'), % new	
	write(S, '\\clearpage\n').



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% prints ttTerm in latex tree fashion
latex_ttTerm_print(S, Pos, TTterm) :-
	TTterm = (SubTTterm, Type),
	nonvar(SubTTterm),
	SubTTterm = TTterm1 @ TTterm2,
	!,
	tab(S, Pos),
	latex_type(Type, Latex_type),
	atomic_list_concat(['[.\\node{$', Latex_type, '$};'], Node),
	write(S, Node),	
	nl(S),
	Pos2 is Pos + 1,
	%write('intermediate none Sibl1: '), write(TTterm1), write('\n'),
	%write('intermediate none Sibl2: '), write(TTterm2), write('\n'),
	latex_ttTerm_print(S, Pos2, TTterm1),
	%write('intermediate one Sibl1: '), write(TTterm1), write('\n'),
	%write('intermediate notyet 2nd Sibl2: '), write(TTterm2), write('\n'),
	latex_ttTerm_print(S, Pos2, TTterm2),
	%write('intermediate both Sibl1: '), write(TTterm1), write('\n'),
	%write('intermediate both Sibl2: '), write(TTterm2), write('\n'),
	tab(S, Pos),
	write(S, ']'), nl(S).



latex_ttTerm_print(S, Pos, TTterm) :-
	TTterm = (SubTTterm, Type),
	nonvar(SubTTterm),
	SubTTterm = abst(X, TTterm1),
	!,
	tab(S, Pos),
	latex_type(Type, Latex_type),
	atomic_list_concat(['[.\\node{$', Latex_type, '$};'], Node),
	write(S, Node),	
	nl(S),
	Pos2 is Pos + 1,
	%write('intermediate none Abst: '), write(abst(X)), write('\n'),
	%write('intermediate none Body: '), write(TTterm1), write('\n'),
	latex_ttTerm_print(S, Pos2, abst(X)),
	%write('intermediate one Abst: '), write(abst(X)), write('\n'),
	%write('intermediate notyet Body: '), write(TTterm1), write('\n'),
	latex_ttTerm_print(S, Pos2, TTterm1),
	%write('intermediate both Abst: '), write(abst(X)), write('\n'),
	%write('intermediate both Body: '), write(TTterm1), write('\n'),
	tab(S, Pos),
	write(S, ']'), nl(S).




latex_ttTerm_print(S, Pos, TTterm) :-
	nonvar(TTterm),
	TTterm = (TT, Type),
	nonvar(TT),
	TT = (_,_),
	!,
	tab(S, Pos),
	latex_type(Type, Latex_type),
	atomic_list_concat(['[.\\node{$', Latex_type, '$};'], Node),
	write(S, Node),	
	nl(S),
	Pos2 is Pos + 1,
	latex_ttTerm_print(S, Pos2, TT),
	tab(S, Pos),
	write(S, ']'), nl(S).



latex_ttTerm_print(S, Pos, TTterm) :-
	nonvar(TTterm),
	TTterm = (Term, Type),
	nonvar(Term),
	Term = tlp(Token, Lem, PosTag, Feat1, Feat2), 
	!,
	latex_term(Token, Latex_Token),
	latex_term(Lem, Latex_Lem),
	latex_term(PosTag, Latex_PosTag),
	tab(S, Pos),
	latex_type(Type, Latex_type),
	Pos8 is Pos,% + 8,
	( Feat2 = 'Ins' ->
		write(S, '[.\\node[text=green]{\n');
	  Type = np:_ ->
		write(S, '[.\\node[text=red]{\n');
	  write(S, '[.\\node{\n') ),
	tab(S, Pos8),
	atomic_list_concat(['\\texttt{', Latex_Token, '}\\\\\n'], Print_Token),
	write(S, Print_Token),
	tab(S, Pos8),
	atomic_list_concat(['$', Latex_type, '$\\\\\n'], Print_type),
	write(S, Print_type),
	tab(S, Pos8),
	atomic_list_concat(['\\textbf{', Latex_Lem, '}\\\\\n'], Print_Lem),
	write(S, Print_Lem),
	tab(S, Pos8),
	atomic_list_concat(['\\normalsize{', Latex_PosTag, '}\\\\\n'], Print_PosTag),
	write(S, Print_PosTag),
	tab(S, Pos8),
	atomic_list_concat(['\\scriptsize{', Feat1, '}\\\\\n'], Print_Feat1),
	write(S, Print_Feat1),
	tab(S, Pos8),
	atomic_list_concat(['\\scriptsize{', Feat2, '} };\n'], Print_Feat2),
	write(S, Print_Feat2),
	tab(S, Pos8),
	write(S, ']\n').



latex_ttTerm_print(S, Pos, TTterm) :-
	nonvar(TTterm),
	TTterm = (Term, Type),
	!,
	latex_term(Term, Latex_term),
	%write('Atom: '), writeln(Latex_term),
	latex_type(Type, Latex_type),
	tab(S, Pos),
	write(S, '[.\\node{'),
	Pos3 is Pos + 3,
	Pos5 is Pos + 5,
	%Pos7 is Pos + 7,
	tab(S, Pos5),
	write(S, '\\textbf{'), 
	write(S, Latex_term),
	write(S, '}\\\\\n'),
	tab(S, Pos5),
	%write(S, '\\begin{sideways}\n'),
	%tab(S, Pos7),
	write(S, '$'),
	write(S, Latex_type),
	write(S, '$\n'),
	%tab(S, Pos5),
	%write(S, '\\end{sideways}\n'),
	tab(S, Pos3),
	write(S, ' };\n'),
	tab(S, Pos),
	write(S, ']\n').




latex_ttTerm_print(S, Pos, VarTerm) :-
	latex_term(VarTerm, Latex_term),
	VarTerm = abst((_Var, Type)),
	latex_type(Type, Latex_type),
	tab(S, Pos),
	write(S, '[.\\node{'),
	Pos3 is Pos + 3,
	Pos5 is Pos + 5,
	tab(S, Pos5),
	write(S, '\\textbf{'), 
	write(S, Latex_term),
	write(S, '}\\\\\n'),
	tab(S, Pos5),
	write(S, '$'),
	write(S, Latex_type),
	write(S, '$\n'),
	tab(S, Pos3),
	write(S, ' };\n'),
	tab(S, Pos),
	write(S, ']\n').





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% convert type according to latex syntax
latex_type(Type, Latex_type) :-
	var(Type), !,
	term_to_atom(Type, Atom_type),
	atom_to_chars(Atom_type, [_, _ | Index_List]),
	atom_to_chars(Index, Index_List),
	atomic_list_concat(['TY_{', Index, '}'], Latex_type).

latex_type(A, A) :-
	atom(A), !.
	
latex_type(A ~> B, Latex_type) :-
	!, latex_type(A, Latex_A),
	latex_type(B, Latex_B),
	( nonvar(A), A = _Ty1~>_Ty2 -> 
		atomic_list_concat(['(', Latex_A, '),', Latex_B], Latex_type);
	    atomic_list_concat([Latex_A, ',', Latex_B], Latex_type)).
	
latex_type(Type:Feat, Latex_type) :-
	latex_type(Type, Latex_ty),
	(var(Feat) -> 
		Latex_type = Latex_ty;
		atomic_list_concat([Latex_ty, '_{', Feat, '}'], Latex_type) ).





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% convert term according to latex syntax
latex_term(Term, Latex_term) :-
	var(Term) ->
		term_to_atom(Term, Atom_term),
		atom_to_chars(Atom_term, [_, _ | Index_List]),
		atom_to_chars(Index, Index_List),
		%write('Printing: '), write(Atom_term), write('\n'), write(Index), write('\n'),
		atomic_list_concat(['$X_{', Index, '}$'], Latex_term);
	Term = abst((Var, _)) ->
		term_to_atom(Var, Atom_term),
		atom_to_chars(Atom_term, [_, _ | Index_List]),
		atom_to_chars(Index, Index_List),
		%write('Printing: '), write(Atom_term), write('\n'), write(Index), write('\n'),
		atomic_list_concat(['$\\lambda X_{', Index, '}$'], Latex_term);
	/*Term == '$' -> 
		Latex_term = '\\$';
	Term == '%' ->
		Latex_term = '\\%';
	Term == '#' ->
		Latex_term = '\\#';*/
	atom_to_latex(Term, Latex_term).

	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
atom_to_latex(A, L) :-
	atomic_list_concat(List1, '&', A),
	atomic_list_concat(List1, '\\&', A1),
	atomic_list_concat(List2, '_', A1),
	atomic_list_concat(List2, '\\_', A2),
	atomic_list_concat(List3, '$', A2),
	atomic_list_concat(List3, '\\$', A3),
	atomic_list_concat(List4, '%', A3),
	atomic_list_concat(List4, '\\%', A4),
	atomic_list_concat(List5, '#', A4),
	atomic_list_concat(List5, '\\#', L).


 

	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% convert lambda term according to latex syntax
lambdaTerm_to_latex(Term, Latex_term) :-
	var(Term),
	!,
	term_to_atom(Term, Atom_term),
	atom_to_chars(Atom_term, [_, _ | Index_List]),
	atom_to_chars(Index, Index_List),
	atomic_list_concat(['$X_{', Index, '}$'], Latex_term).
	
lambdaTerm_to_latex(Term1 @ Term2, Latex_term) :-
	!,
	lambdaTerm_to_latex(Term1, Latex1),
	lambdaTerm_to_latex(Term2, Latex2),
	((nonvar(Term2), Term2 = _ @ _) ->
		atomic_list_concat([Latex1, ' (', Latex2, ')'], Latex_term);
	atomic_list_concat([Latex1, ' ', Latex2], Latex_term)).

lambdaTerm_to_latex(abst(X, Term), Latex_term) :-
	!,
	term_to_atom(X, Atom_term),
	atom_to_chars(Atom_term, [_, _ | Index_List]),
	atom_to_chars(Index, Index_List),
	lambdaTerm_to_latex(Term, Latex),
	atomic_list_concat(['$(\\lambda X_{', Index, '}$.', Latex, ')'], Latex_term).
	
lambdaTerm_to_latex(Term, Latex_term) :-
	Term == '$' -> 
		Latex_term = '\\$';
	Term == '%' ->
		Latex_term = '\\%';
	Term == '#' ->
		Latex_term = '\\#';
	atomic_list_concat(Parts1, '&', Term),
	atomic_list_concat(Parts1, '\\&', Temp1),
	atomic_list_concat(Parts2, '_', Temp1),
	atomic_list_concat(Parts2, '\\_', Temp2),
	atomic_list_concat(Parts3, '$', Temp2),
	atomic_list_concat(Parts3, '\\$', Latex_term).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TTterm to latex term
ttTerm_to_latexTerm(TT, LatexTerm) :-
	ttExp_to_ttTerm(TT, TTterm), % just for asistance
	ttTerm_to_prettyTerm(TTterm, PrettyTerm),
	lambdaTerm_to_latex(PrettyTerm, LatexTerm).
	
		








