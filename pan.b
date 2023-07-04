	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM teste */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM desc */
;
		;
		;
		;
		
	case 7: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM sinc2 */
;
		;
		
	case 9: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM sinc1 */
;
		;
		
	case 11: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fram_rx */

	case 12: // STATE 1
		;
		((P1 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 2
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 3
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 15: // STATE 5
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 16: // STATE 7
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 17: // STATE 9
		;
	/* 0 */	((P1 *)_this)->octeto = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.tx, XX-1, 0, ((P1 *)_this)->octeto, 1);
		((P1 *)_this)->octeto = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 14
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 19: // STATE 15
		;
		((P1 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 16
		;
		now.error = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 17
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 18
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 23: // STATE 20
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 3, 1);
		;
		;
		goto R999;
;
		;
		
	case 25: // STATE 27
		;
	/* 0 */	((P1 *)_this)->cnt = trpt->bup.oval;
		;
		;
		goto R999;

	case 26: // STATE 29
		;
	/* 0 */	((P1 *)_this)->octeto = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.tx, XX-1, 0, ((P1 *)_this)->octeto, 1);
		((P1 *)_this)->octeto = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 34
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 28: // STATE 35
		;
		((P1 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 36
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 38
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 31: // STATE 39
		;
		now.error = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 41
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 33: // STATE 42
		;
		now.error = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 44
		;
	/* 0 */	((P1 *)_this)->octeto = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.tx, XX-1, 0, ((P1 *)_this)->octeto, 1);
		((P1 *)_this)->octeto = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 35: // STATE 49
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC fram_tx */

	case 36: // STATE 1
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 37: // STATE 2
		;
		((P0 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 3
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 40: // STATE 5
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 41: // STATE 6
		;
		((P0 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 7
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 8
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 44: // STATE 9
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 45: // STATE 10
		;
		((P0 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 11
		;
		now.i = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 14
		;
	/* 0 */	((P0 *)_this)->cnt = trpt->bup.oval;
		;
		;
		goto R999;

	case 48: // STATE 15
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 49: // STATE 18
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 50: // STATE 23
		;
		p_restor(II);
		;
		;
		goto R999;
	}

