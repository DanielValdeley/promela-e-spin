	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC receptor */

	case 3: // STATE 1
		;
	/* 0 */	((P1 *)_this)->num = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		unrecv(now.tx, XX-1, 1, ((int)((P1 *)_this)->num), 0);
		((P1 *)_this)->num = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 4: // STATE 3
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		unrecv(now.tx, XX-1, 1, ((int)((P1 *)_this)->seq), 0);
		;
		;
		goto R999;
;
		;
		
	case 6: // STATE 5
		;
		_m = unsend(now.rx);
		;
		goto R999;

	case 7: // STATE 6
		;
		((P1 *)_this)->seq = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 7
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		unrecv(now.tx, XX-1, 1,  !(((int)((P1 *)_this)->seq)), 0);
		;
		;
		goto R999;
;
		;
		
	case 10: // STATE 9
		;
		_m = unsend(now.rx);
		;
		goto R999;

	case 11: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC transmissor */

	case 12: // STATE 1
		;
		_m = unsend(now.tx);
		;
		goto R999;
;
		;
		
	case 14: // STATE 3
		;
	/* 0 */	((P0 *)_this)->num = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.rx, XX-1, 0, 2, 1);
		unrecv(now.rx, XX-1, 1, ((int)((P0 *)_this)->num), 0);
		((P0 *)_this)->num = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 5
		;
		XX = 1;
		unrecv(now.rx, XX-1, 0, 2, 1);
		unrecv(now.rx, XX-1, 1, ((int)((P0 *)_this)->seq), 0);
		;
		;
		goto R999;

	case 16: // STATE 7
		;
		((P0 *)_this)->seq = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 9
		;
		XX = 1;
		unrecv(now.rx, XX-1, 0, 2, 1);
		unrecv(now.rx, XX-1, 1,  !(((int)((P0 *)_this)->seq)), 0);
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 21: // STATE 14
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 22: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;
	}

