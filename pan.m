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

		 /* PROC receptor */
	case 3: // STATE 1 - pe.pml:42 - [tx?data,num] (0:0:2 - 1)
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
	case 4: // STATE 3 - pe.pml:44 - [tx?data,eval(seq)] (0:0:0 - 1)
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
	case 5: // STATE 4 - pe.pml:45 - [printf('receptor recebeu data %d\\n',seq)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		Printf("receptor recebeu data %d\n", ((int)((P1 *)_this)->seq));
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 5 - pe.pml:46 - [rx!ack,seq] (0:0:0 - 1)
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
	case 7: // STATE 6 - pe.pml:47 - [seq = !(seq)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->seq);
		((P1 *)_this)->seq =  !(((int)((P1 *)_this)->seq));
#ifdef VAR_RANGES
		logval("receptor:seq", ((int)((P1 *)_this)->seq));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 7 - pe.pml:48 - [tx?data,eval(!(seq))] (0:0:0 - 1)
		reached[1][7] = 1;
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
	case 9: // STATE 8 - pe.pml:49 - [printf('receptor recebeu data duplicado %d\\n',!(seq))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		Printf("receptor recebeu data duplicado %d\n",  !(((int)((P1 *)_this)->seq)));
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 9 - pe.pml:50 - [rx!ack,!(seq)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
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
	case 11: // STATE 13 - pe.pml:52 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC transmissor */
	case 12: // STATE 1 - pe.pml:17 - [tx!data,seq] (0:0:0 - 1)
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
	case 13: // STATE 2 - pe.pml:18 - [printf('transmissor transmitiu msg %d\\n',seq)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		Printf("transmissor transmitiu msg %d\n", ((int)((P0 *)_this)->seq));
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 3 - pe.pml:22 - [rx?ack,num] (0:0:2 - 1)
		reached[0][3] = 1;
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
	case 15: // STATE 5 - pe.pml:24 - [rx?ack,eval(seq)] (0:0:0 - 1)
		reached[0][5] = 1;
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
	case 16: // STATE 6 - pe.pml:25 - [printf('transmissor recebeu ack %d\\n',seq)] (0:1:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		Printf("transmissor recebeu ack %d\n", ((int)((P0 *)_this)->seq));
		/* merge: seq = !(seq)(1, 7, 1) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->seq);
		((P0 *)_this)->seq =  !(((int)((P0 *)_this)->seq));
#ifdef VAR_RANGES
		logval("transmissor:seq", ((int)((P0 *)_this)->seq));
#endif
		;
		/* merge: goto ocioso(0, 8, 1) */
		reached[0][8] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 9 - pe.pml:28 - [rx?ack,eval(!(seq))] (0:0:0 - 1)
		reached[0][9] = 1;
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
	case 18: // STATE 10 - pe.pml:29 - [printf('transmissor recebeu ack incorreto: %d\\n',!(seq))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		Printf("transmissor recebeu ack incorreto: %d\n",  !(((int)((P0 *)_this)->seq)));
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 12 - pe.pml:31 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 20: // STATE 13 - pe.pml:32 - [printf('retransmitiu data %d\\n',seq)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		Printf("retransmitiu data %d\n", ((int)((P0 *)_this)->seq));
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 14 - pe.pml:33 - [tx!data,seq] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
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
	case 22: // STATE 18 - pe.pml:35 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
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

