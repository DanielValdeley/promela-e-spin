	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC p2 */

	case 3: // STATE 1
		;
		_m = unsend(now.canal1);
		;
		goto R999;

	case 4: // STATE 2
		;
		_m = unsend(now.canal2);
		;
		goto R999;

	case 5: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC p1 */

	case 6: // STATE 1
		;
	/* 0 */	((P0 *)_this)->msg = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.canal1, XX-1, 0, ((P0 *)_this)->msg, 1);
		((P0 *)_this)->msg = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 7: // STATE 2
		;
		((P0 *)_this)->n1 = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 4
		;
	/* 0 */	((P0 *)_this)->msg = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.canal2, XX-1, 0, ((P0 *)_this)->msg, 1);
		((P0 *)_this)->msg = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 9: // STATE 5
		;
		((P0 *)_this)->n2 = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;
	}

