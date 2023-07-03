#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM desc */
	case 3: // STATE 1 - _spin_nvr.tmp:11 - [((!((fram_rx._p==estado_ocioso))&&((fram_rx._p==estado_rx)&&(i>max_size))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!(( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==1))&&((((int)((P1 *)Pptr(f_pid(1)))->_p)==30)&&(now.i>now.max_size)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 6 - _spin_nvr.tmp:16 - [(((fram_rx._p==estado_rx)&&(i>max_size)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][6] = 1;
		if (!(((((int)((P1 *)Pptr(f_pid(1)))->_p)==30)&&(now.i>now.max_size))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 11 - _spin_nvr.tmp:18 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM rec */
	case 6: // STATE 1 - _spin_nvr.tmp:4 - [((!((!((fram_rx._p==estado_esc))||(fram_rx._p==estado_rx)))&&!((!((fram_rx._p==estado_ocioso))||(fram_rx._p==estado_rx)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!(( !(( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==43))||(((int)((P1 *)Pptr(f_pid(1)))->_p)==30)))&& !(( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==1))||(((int)((P1 *)Pptr(f_pid(1)))->_p)==30))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 6 - _spin_nvr.tmp:6 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fram_rx */
	case 8: // STATE 1 - enq.pml:41 - [cnt = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->cnt;
		((P1 *)_this)->cnt = 0;
#ifdef VAR_RANGES
		logval("fram_rx:cnt", ((P1 *)_this)->cnt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 2 - enq.pml:42 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 0;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 3 - enq.pml:44 - [tx?flag] (0:0:0 - 1)
		reached[1][3] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (3 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 5 - enq.pml:45 - [tx?data] (0:0:0 - 1)
		reached[1][5] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (1 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 12: // STATE 7 - enq.pml:46 - [tx?esc] (0:0:0 - 1)
		reached[1][7] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (2 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 13: // STATE 9 - enq.pml:47 - [tx?octeto] (0:0:2 - 1)
		reached[1][9] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->octeto;
		;
		((P1 *)_this)->octeto = qrecv(now.tx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("fram_rx:octeto", ((P1 *)_this)->octeto);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", ((P1 *)_this)->octeto); strcat(simvals, simtmp);
		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: octeto */  (trpt+1)->bup.ovals[1] = ((P1 *)_this)->octeto;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->octeto = 0;
		_m = 4; goto P999; /* 0 */
	case 14: // STATE 14 - enq.pml:53 - [tx?data] (0:0:0 - 1)
		reached[1][14] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (1 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 15 - enq.pml:53 - [cnt = (cnt+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->cnt;
		((P1 *)_this)->cnt = (((P1 *)_this)->cnt+1);
#ifdef VAR_RANGES
		logval("fram_rx:cnt", ((P1 *)_this)->cnt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 16 - enq.pml:54 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 17 - enq.pml:55 - [tx?esc] (0:0:0 - 1)
		reached[1][17] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (2 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 18: // STATE 19 - enq.pml:56 - [tx?flag] (0:0:0 - 1)
		reached[1][19] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (3 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 20 - enq.pml:58 - [((cnt==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!((((P1 *)_this)->cnt==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 26 - enq.pml:61 - [((cnt>max_size))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((((P1 *)_this)->cnt>now.max_size)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: cnt */  (trpt+1)->bup.oval = ((P1 *)_this)->cnt;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->cnt = 0;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 28 - enq.pml:62 - [tx?octeto] (0:0:2 - 1)
		reached[1][28] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->octeto;
		;
		((P1 *)_this)->octeto = qrecv(now.tx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("fram_rx:octeto", ((P1 *)_this)->octeto);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", ((P1 *)_this)->octeto); strcat(simvals, simtmp);
		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: octeto */  (trpt+1)->bup.ovals[1] = ((P1 *)_this)->octeto;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->octeto = 0;
		_m = 4; goto P999; /* 0 */
	case 22: // STATE 33 - enq.pml:67 - [tx?data] (0:0:0 - 1)
		reached[1][33] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (1 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 23: // STATE 34 - enq.pml:68 - [cnt = (cnt+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->cnt;
		((P1 *)_this)->cnt = (((P1 *)_this)->cnt+1);
#ifdef VAR_RANGES
		logval("fram_rx:cnt", ((P1 *)_this)->cnt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 35 - enq.pml:69 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 37 - enq.pml:71 - [tx?flag] (0:0:0 - 1)
		reached[1][37] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (3 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 26: // STATE 39 - enq.pml:73 - [tx?esc] (0:0:0 - 1)
		reached[1][39] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (2 != qrecv(now.tx, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 27: // STATE 41 - enq.pml:75 - [tx?octeto] (0:0:2 - 1)
		reached[1][41] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->octeto;
		;
		((P1 *)_this)->octeto = qrecv(now.tx, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("fram_rx:octeto", ((P1 *)_this)->octeto);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", ((P1 *)_this)->octeto); strcat(simvals, simtmp);
		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: octeto */  (trpt+1)->bup.ovals[1] = ((P1 *)_this)->octeto;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->octeto = 0;
		_m = 4; goto P999; /* 0 */
	case 28: // STATE 46 - enq.pml:77 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC fram_tx */
	case 29: // STATE 1 - enq.pml:12 - [tx!flag] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 30: // STATE 2 - enq.pml:13 - [cnt = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->cnt;
		((P0 *)_this)->cnt = 0;
#ifdef VAR_RANGES
		logval("fram_tx:cnt", ((P0 *)_this)->cnt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 3 - enq.pml:14 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 0;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 4 - enq.pml:17 - [((cnt<max_size))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((P0 *)_this)->cnt<now.max_size)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 5 - enq.pml:19 - [tx!data] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 34: // STATE 6 - enq.pml:19 - [cnt = (cnt+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->cnt;
		((P0 *)_this)->cnt = (((P0 *)_this)->cnt+1);
#ifdef VAR_RANGES
		logval("fram_tx:cnt", ((P0 *)_this)->cnt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 7 - enq.pml:20 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 8 - enq.pml:21 - [tx!esc] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 2, 1);
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 9 - enq.pml:22 - [tx!data] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 38: // STATE 10 - enq.pml:23 - [cnt = (cnt+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->cnt;
		((P0 *)_this)->cnt = (((P0 *)_this)->cnt+1);
#ifdef VAR_RANGES
		logval("fram_tx:cnt", ((P0 *)_this)->cnt);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 11 - enq.pml:24 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 14 - enq.pml:26 - [((cnt>0))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((((P0 *)_this)->cnt>0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: cnt */  (trpt+1)->bup.oval = ((P0 *)_this)->cnt;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->cnt = 0;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 15 - enq.pml:27 - [tx!flag] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 18 - enq.pml:30 - [tx!flag] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 23 - enq.pml:33 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

