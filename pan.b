	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM confirm */
;
		;
		;
		
	case 4: // STATE 3
		goto R999;
;
		;
		
	case 6: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM recv */
;
		;
		;
		;
		
	case 9: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC receptor */

	case 10: // STATE 1
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

	case 11: // STATE 3
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		unrecv(now.tx, XX-1, 1, ((int)((P1 *)_this)->seq), 0);
		;
		;
		goto R999;
;
		;
		
	case 13: // STATE 5
		;
		_m = unsend(now.rx);
		;
		goto R999;

	case 14: // STATE 6
		;
		now.guarda_mseq_RX = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 7
		;
		((P1 *)_this)->seq = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 8
		;
		XX = 1;
		unrecv(now.tx, XX-1, 0, 1, 1);
		unrecv(now.tx, XX-1, 1,  !(((int)((P1 *)_this)->seq)), 0);
		;
		;
		goto R999;
;
		;
		
	case 18: // STATE 10
		;
		_m = unsend(now.rx);
		;
		goto R999;

	case 19: // STATE 11
		;
		now.guarda_mseq_RX = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC transmissor */

	case 21: // STATE 1
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 22: // STATE 2
		;
		now.guarda_nseq_TX = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: // STATE 4
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

	case 25: // STATE 6
		;
		XX = 1;
		unrecv(now.rx, XX-1, 0, 2, 1);
		unrecv(now.rx, XX-1, 1, ((int)((P0 *)_this)->seq), 0);
		;
		;
		goto R999;
;
		;
		
	case 27: // STATE 8
		;
		now.guarda_nseq_TX = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 9
		;
		((P0 *)_this)->seq = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 11
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
		
	case 33: // STATE 16
		;
		_m = unsend(now.tx);
		;
		goto R999;

	case 34: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;
	}

