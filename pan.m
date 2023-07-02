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

		 /* CLAIM confirm */
	case 3: // STATE 1 - _spin_nvr.tmp:15 - [(!(((transmissor._p==espera)&&(guarda_nseq_TX==guarda_mseq_RX))))] (0:0:0 - 1)
		
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
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==17)&&(((int)now.guarda_nseq_TX)==((int)now.guarda_mseq_RX))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:16 - [(!((transmissor._p==ocioso)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][3] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==1))))
			continue;
		/* merge: assert(!(!((transmissor._p==ocioso))))(0, 4, 6) */
		reached[3][4] = 1;
		spin_assert( !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==1))), " !( !((transmissor._p==ocioso)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 5: // STATE 9 - _spin_nvr.tmp:21 - [(!(((transmissor._p==espera)&&(guarda_nseq_TX==guarda_mseq_RX))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][9] = 1;
		if (!( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==17)&&(((int)now.guarda_nseq_TX)==((int)now.guarda_mseq_RX))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 15 - _spin_nvr.tmp:25 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM recv */
	case 7: // STATE 1 - _spin_nvr.tmp:3 - [((!(!((transmissor._p==ocioso)))&&!((guarda_nseq_TX==guarda_mseq_RX))))] (0:0:0 - 1)
		
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
		if (!(( !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==1)))&& !((((int)now.guarda_nseq_TX)==((int)now.guarda_mseq_RX))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 8 - _spin_nvr.tmp:8 - [(!((guarda_nseq_TX==guarda_mseq_RX)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][8] = 1;
		if (!( !((((int)now.guarda_nseq_TX)==((int)now.guarda_mseq_RX)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC receptor */
	case 10: // STATE 1 - pe.pml:47 - [tx?data,num] (0:0:2 - 1)
		reached[1][1] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (1 != qrecv(now.tx, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->num);
		;
		((P1 *)_this)->num = qrecv(now.tx, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("receptor:num", ((int)((P1 *)_this)->num));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((int)((P1 *)_this)->num)); strcat(simvals, simtmp);
		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: num */  (trpt+1)->bup.ovals[1] = ((P1 *)_this)->num;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->num = 0;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 3 - pe.pml:49 - [tx?data,eval(seq)] (0:0:0 - 1)
		reached[1][3] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (1 != qrecv(now.tx, 0, 0, 0)) continue;
		if (((int)((P1 *)_this)->seq) != qrecv(now.tx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
			strcat(simvals, ",");

			sprintf(simtmp, "%d", ((int)((P1 *)_this)->seq)); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 12: // STATE 4 - pe.pml:50 - [printf('receptor recebeu data %d\\n',seq)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		Printf("receptor recebeu data %d\n", ((int)((P1 *)_this)->seq));
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 5 - pe.pml:51 - [rx!ack,seq] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (q_full(now.rx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.rx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->seq)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.rx, 0, 2, ((int)((P1 *)_this)->seq), 2);
		_m = 2; goto P999; /* 0 */
	case 14: // STATE 6 - pe.pml:52 - [guarda_mseq_RX = seq] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.guarda_mseq_RX);
		now.guarda_mseq_RX = ((int)((P1 *)_this)->seq);
#ifdef VAR_RANGES
		logval("guarda_mseq_RX", ((int)now.guarda_mseq_RX));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 7 - pe.pml:53 - [seq = !(seq)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->seq);
		((P1 *)_this)->seq =  !(((int)((P1 *)_this)->seq));
#ifdef VAR_RANGES
		logval("receptor:seq", ((int)((P1 *)_this)->seq));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - pe.pml:54 - [tx?data,eval(!(seq))] (0:0:0 - 1)
		reached[1][8] = 1;
		if (q_len(now.tx) == 0) continue;

		XX=1;
		if (1 != qrecv(now.tx, 0, 0, 0)) continue;
		if ( !(((int)((P1 *)_this)->seq)) != qrecv(now.tx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.tx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.tx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tx);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
			strcat(simvals, ",");

			sprintf(simtmp, "%d",  !(((int)((P1 *)_this)->seq))); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 17: // STATE 9 - pe.pml:55 - [printf('receptor recebeu data duplicado %d\\n',!(seq))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		Printf("receptor recebeu data duplicado %d\n",  !(((int)((P1 *)_this)->seq)));
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 10 - pe.pml:56 - [rx!ack,!(seq)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (q_full(now.rx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.rx);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d",  !(((int)((P1 *)_this)->seq))); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.rx, 0, 2,  !(((int)((P1 *)_this)->seq)), 2);
		_m = 2; goto P999; /* 0 */
	case 19: // STATE 11 - pe.pml:57 - [guarda_mseq_RX = seq] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.guarda_mseq_RX);
		now.guarda_mseq_RX = ((int)((P1 *)_this)->seq);
#ifdef VAR_RANGES
		logval("guarda_mseq_RX", ((int)now.guarda_mseq_RX));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 15 - pe.pml:59 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC transmissor */
	case 21: // STATE 1 - pe.pml:20 - [tx!data,seq] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->seq)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 1, ((int)((P0 *)_this)->seq), 2);
		_m = 2; goto P999; /* 0 */
	case 22: // STATE 2 - pe.pml:21 - [guarda_nseq_TX = seq] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.guarda_nseq_TX);
		now.guarda_nseq_TX = ((int)((P0 *)_this)->seq);
#ifdef VAR_RANGES
		logval("guarda_nseq_TX", ((int)now.guarda_nseq_TX));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 3 - pe.pml:22 - [printf('transmissor transmitiu msg %d\\n',seq)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		Printf("transmissor transmitiu msg %d\n", ((int)((P0 *)_this)->seq));
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 4 - pe.pml:26 - [rx?ack,num] (0:0:2 - 1)
		reached[0][4] = 1;
		if (q_len(now.rx) == 0) continue;

		XX=1;
		if (2 != qrecv(now.rx, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->num);
		;
		((P0 *)_this)->num = qrecv(now.rx, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("transmissor:num", ((int)((P0 *)_this)->num));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.rx);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((int)((P0 *)_this)->num)); strcat(simvals, simtmp);
		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: num */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->num;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->num = 0;
		_m = 4; goto P999; /* 0 */
	case 25: // STATE 6 - pe.pml:28 - [rx?ack,eval(seq)] (0:0:0 - 1)
		reached[0][6] = 1;
		if (q_len(now.rx) == 0) continue;

		XX=1;
		if (2 != qrecv(now.rx, 0, 0, 0)) continue;
		if (((int)((P0 *)_this)->seq) != qrecv(now.rx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.rx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.rx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.rx);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
			strcat(simvals, ",");

			sprintf(simtmp, "%d", ((int)((P0 *)_this)->seq)); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 26: // STATE 7 - pe.pml:29 - [printf('transmissor recebeu ack %d\\n',seq)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		Printf("transmissor recebeu ack %d\n", ((int)((P0 *)_this)->seq));
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 8 - pe.pml:30 - [guarda_nseq_TX = seq] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.guarda_nseq_TX);
		now.guarda_nseq_TX = ((int)((P0 *)_this)->seq);
#ifdef VAR_RANGES
		logval("guarda_nseq_TX", ((int)now.guarda_nseq_TX));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 9 - pe.pml:31 - [seq = !(seq)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->seq);
		((P0 *)_this)->seq =  !(((int)((P0 *)_this)->seq));
#ifdef VAR_RANGES
		logval("transmissor:seq", ((int)((P0 *)_this)->seq));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 11 - pe.pml:33 - [rx?ack,eval(!(seq))] (0:0:0 - 1)
		reached[0][11] = 1;
		if (q_len(now.rx) == 0) continue;

		XX=1;
		if (2 != qrecv(now.rx, 0, 0, 0)) continue;
		if ( !(((int)((P0 *)_this)->seq)) != qrecv(now.rx, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.rx-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.rx, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.rx);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
			strcat(simvals, ",");

			sprintf(simtmp, "%d",  !(((int)((P0 *)_this)->seq))); strcat(simvals, simtmp);
		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 30: // STATE 12 - pe.pml:34 - [printf('transmissor recebeu ack incorreto: %d\\n',!(seq))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		Printf("transmissor recebeu ack incorreto: %d\n",  !(((int)((P0 *)_this)->seq)));
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 14 - pe.pml:36 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 32: // STATE 15 - pe.pml:37 - [printf('retransmitiu data %d\\n',seq)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		Printf("retransmitiu data %d\n", ((int)((P0 *)_this)->seq));
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 16 - pe.pml:38 - [tx!data,seq] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (q_full(now.tx))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tx);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->seq)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tx, 0, 1, ((int)((P0 *)_this)->seq), 2);
		_m = 2; goto P999; /* 0 */
	case 34: // STATE 20 - pe.pml:40 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
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

