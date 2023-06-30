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

		 /* PROC p2 */
	case 3: // STATE 1 - teste.pml:17 - [canal1!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (q_full(now.canal1))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.canal1);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.canal1, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 4: // STATE 2 - teste.pml:18 - [canal2!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (q_full(now.canal2))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.canal2);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.canal2, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 5: // STATE 6 - teste.pml:20 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC p1 */
	case 6: // STATE 1 - teste.pml:10 - [canal1?msg] (0:0:2 - 1)
		reached[0][1] = 1;
		if (q_len(now.canal1) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->msg;
		;
		((P0 *)_this)->msg = qrecv(now.canal1, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("p1:msg", ((P0 *)_this)->msg);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.canal1);
			sprintf(simtmp, "%d", ((P0 *)_this)->msg); strcat(simvals, simtmp);
		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: msg */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->msg;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->msg = 0;
		_m = 4; goto P999; /* 0 */
	case 7: // STATE 2 - teste.pml:10 - [n1 = (n1+1)] (0:7:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->n1;
		((P0 *)_this)->n1 = (((P0 *)_this)->n1+1);
#ifdef VAR_RANGES
		logval("p1:n1", ((P0 *)_this)->n1);
#endif
		;
		/* merge: assert((n1<10))(7, 3, 7) */
		reached[0][3] = 1;
		spin_assert((((P0 *)_this)->n1<10), "(n1<10)", II, tt, t);
		/* merge: .(goto)(0, 8, 7) */
		reached[0][8] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 4 - teste.pml:11 - [canal2?msg] (0:0:2 - 1)
		reached[0][4] = 1;
		if (q_len(now.canal2) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->msg;
		;
		((P0 *)_this)->msg = qrecv(now.canal2, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("p1:msg", ((P0 *)_this)->msg);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.canal2);
			sprintf(simtmp, "%d", ((P0 *)_this)->msg); strcat(simvals, simtmp);
		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: msg */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->msg;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->msg = 0;
		_m = 4; goto P999; /* 0 */
	case 9: // STATE 5 - teste.pml:11 - [n2 = (n2+1)] (0:7:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->n2;
		((P0 *)_this)->n2 = (((P0 *)_this)->n2+1);
#ifdef VAR_RANGES
		logval("p1:n2", ((P0 *)_this)->n2);
#endif
		;
		/* merge: assert((n2<15))(7, 6, 7) */
		reached[0][6] = 1;
		spin_assert((((P0 *)_this)->n2<15), "(n2<15)", II, tt, t);
		/* merge: .(goto)(0, 8, 7) */
		reached[0][8] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 10 - teste.pml:13 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
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

