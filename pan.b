	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM desc */
;
		;
		;
		;
		
	case 5: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM rec */
;
		;
		
	case 7: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fram_rx */

	case 8: // STATE 1
		;
		((P1 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 2
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 3
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 11: // STATE 5
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 12: // STATE 7
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 13: // STATE 9
		;
	/* 0 */	((P1 *)_this)->octeto = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.tx, XX-1, 0, ((P1 *)_this)->octeto, 1);
		((P1 *)_this)->octeto = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 14: // STATE 14
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 15: // STATE 15
		;
		((P1 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 16
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 17
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 18: // STATE 19
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 3, 1);
		;
		;
		goto R999;
;
		;
		
	case 20: // STATE 26
		;
	/* 0 */	((P1 *)_this)->cnt = trpt->bup.oval;
		;
		;
		goto R999;

	case 21: // STATE 28
		;
	/* 0 */	((P1 *)_this)->octeto = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.tx, XX-1, 0, ((P1 *)_this)->octeto, 1);
		((P1 *)_this)->octeto = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 22: // STATE 33
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 23: // STATE 34
		;
		((P1 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 35
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 37
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 26: // STATE 39
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 27: // STATE 41
		;
	/* 0 */	((P1 *)_this)->octeto = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.tx, XX-1, 0, ((P1 *)_this)->octeto, 1);
		((P1 *)_this)->octeto = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 28: // STATE 46
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fram_tx */

	case 29: // STATE 1
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 30: // STATE 2
		;
		((P0 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 3
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 5
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 34: // STATE 6
		;
		((P0 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 7
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 8
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 37: // STATE 9
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 38: // STATE 10
		;
		((P0 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 11
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 14
		;
	/* 0 */	((P0 *)_this)->cnt = trpt->bup.oval;
		;
		;
		goto R999;

	case 41: // STATE 15
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 42: // STATE 18
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 43: // STATE 23
		;
		p_restor(II);
		;
		;
		goto R999;
	}

