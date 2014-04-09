/* v/sist.c
**
** This file is in the public domain.
*/
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/errno.h>
#include <unistd.h>
#include <uv.h>

#include "all.h"
#include "v/vere.h"


/* u2_sist_pack(): write a blob to disk, retaining.
*/
void
u2_sist_pack(u2_sist* sis_u, u2_rent* ent_u)
{
  u2_ulog* lug_u = &sis_u->lug_u;
  c3_d     tar_d;
  u2_ular  lar_u;

  tar_d = lug_u->len_d + ent_u->len_w;

  c3_assert(ent_u->tem_w >= sis_u->lat_w);
  sis_u->ent_d++;
  sis_u->lat_w = ent_u->tem_w;
  lar_u.tem_w = ent_u->tem_w;
  lar_u.typ_w = ent_u->typ_w;
  lar_u.syn_w = u2_cr_mug((c3_w)tar_d);
  lar_u.mug_w = u2_cr_mug_both(u2_cr_mug_words(ent_u->bob_w, ent_u->len_w),
                               u2_cr_mug_both(u2_cr_mug(lar_u.tem_w),
                                              u2_cr_mug(lar_u.typ_w)));
  lar_u.ent_d = sis_u->ent_d;
  lar_u.len_w = ent_u->len_w;

  if ( -1 == lseek64(lug_u->fid_i, 4ULL * tar_d, SEEK_SET) ) {
    perror("lseek");
    uL(fprintf(uH, "sist_pack: seek failed\n"));
    c3_assert(0);
  }
  if ( sizeof(lar_u) != write(lug_u->fid_i, &lar_u, sizeof(lar_u)) ) {
    perror("write");
    uL(fprintf(uH, "sist_pack: write failed\n"));
    c3_assert(0);
  }
  if ( -1 == lseek64(lug_u->fid_i, 4ULL * lug_u->len_d, SEEK_SET) ) {
    perror("lseek");
    uL(fprintf(uH, "sist_pack: seek failed\n"));
    c3_assert(0);
  }
#if 0
  uL(fprintf(uH, "sist_pack: write %llu, %llu: lar ent %llu, len %d, mug %x\n",
                 lug_u->len_d,
                 tar_d,
                 lar_u.ent_d,
                 lar_u.len_w,
                 lar_u.mug_w));
#endif
  if ( (4 * ent_u->len_w) != write(lug_u->fid_i,
                                   ent_u->bob_w,
                                   (4 * ent_u->len_w)) )
  {
    perror("write");
    uL(fprintf(uH, "sist_pack: write failed\n"));
    c3_assert(0);
  }
  lug_u->len_d += (c3_d)(lar_u.len_w + c3_wiseof(lar_u));
}

/* u2_sist_rent(): retrieve a range of log entries.
**
** Caller must free ent_u->bob_w.
*/
void
u2_sist_rent(u2_sist* sis_u, c3_d lai_d, c3_d n_d, u2_rent* ent_u)
{
  u2_ulog* lug_u = &sis_u->lug_u;
  c3_d     end_d;
  c3_d     ent_d;
  c3_d     tar_d;
  c3_d     i_d;
  u2_ular  lar_u;


  c3_assert(n_d != 0);
  end_d = lug_u->len_d;
  ent_d = sis_u->ent_d;

  //uL(fprintf(uH, "sist: rent: lai:%llu n:%llu ent:%llu\n", lai_d, n_d, ent_d));

  while ( end_d != c3_wiseof(u2_uled) ) {
    tar_d = end_d - c3_wiseof(u2_ular);
    if ( -1 == lseek64(lug_u->fid_i, 4ULL * tar_d, SEEK_SET) ) {
      perror("lseek");
      uL(fprintf(uH, "sist: rent: record is corrupt (d)\n"));
      u2_lo_bail(u2A);
    }
    if ( sizeof(lar_u) != read(lug_u->fid_i, &lar_u, sizeof(lar_u)) ) {
      perror("read");
      uL(fprintf(uH, "sist: rent: record is corrupt (e)\n"));
      u2_lo_bail(u2A);
    }
    if ( lar_u.syn_w != u2_mug((c3_w)tar_d) ) {
      uL(fprintf(uH, "sist: rent: record is corrupt (f)\n"));
      u2_lo_bail(u2A);
    }
    if ( lar_u.ent_d != ent_d ) {
      uL(fprintf(uH, "sist: rent: record is corrupt (g)\n"));
      u2_lo_bail(u2A);
    }
    if ( (lai_d + n_d) == ent_d ) {
      break;
    }
    ent_d = ent_d - 1;
    end_d = tar_d - lar_u.len_w;
  }
  for ( i_d = 0; i_d < n_d; i_d++ ) {
    if ( end_d == c3_wiseof(u2_uled) ) {
      uL(fprintf(uH, "sist: rent: record is corrupt (l)\n"));
      u2_lo_bail(u2A);
    }
    tar_d = end_d - c3_wiseof(u2_ular);
    if ( -1 == lseek64(lug_u->fid_i, 4ULL * tar_d, SEEK_SET) ) {
      perror("lseek");
      uL(fprintf(uH, "sist: rent: record is corrupt (d)\n"));
      u2_lo_bail(u2A);
    }
    if ( sizeof(lar_u) != read(lug_u->fid_i, &lar_u, sizeof(lar_u)) ) {
      perror("read");
      uL(fprintf(uH, "sist: rent: record is corrupt (e)\n"));
      u2_lo_bail(u2A);
    }
    if ( lar_u.syn_w != u2_mug((c3_w)tar_d) ) {
      uL(fprintf(uH, "sist: rent: record is corrupt (f)\n"));
      u2_lo_bail(u2A);
    }
    end_d = tar_d - lar_u.len_w;
    if ( ent_d != lar_u.ent_d ) {
      uL(fprintf(uH, "sist: rent: record is corrupt (g)\n"));
      uL(fprintf(uH, "lar_u.ent_d %llx, ent_d %llx\n",
                 lar_u.ent_d, ent_d));
      u2_lo_bail(u2A);
    }
    else {
      u2_rent* cur_u = ent_u + n_d - 1 - i_d;

      cur_u->tem_w = lar_u.tem_w;
      cur_u->typ_w = lar_u.typ_w;
      cur_u->len_w = lar_u.len_w;
      cur_u->bob_w = malloc(4 * lar_u.len_w);
      if ( -1 == lseek64(lug_u->fid_i, 4ULL * end_d, SEEK_SET) ) {
        perror("lseek");
        uL(fprintf(uH, "sist: rent: record is corrupt (h)\n"));
        u2_lo_bail(u2A);
      }
      if ( 4 * cur_u->len_w != read(lug_u->fid_i, cur_u->bob_w,
                                    4 * cur_u->len_w) )
      {
        perror("read");
        uL(fprintf(uH, "sist: rent: record is corrupt (i)\n"));
        u2_lo_bail(u2A);
      }
      if ( lar_u.mug_w !=
           u2_cr_mug_both(u2_cr_mug_words(cur_u->bob_w, cur_u->len_w),
                          u2_cr_mug_both(u2_cr_mug(lar_u.tem_w),
                                         u2_cr_mug(lar_u.typ_w))) )
      {
        uL(fprintf(uH, "sist: rent: record is corrupt (j)\n"));
        u2_lo_bail(u2A);
      }
    }
    ent_d = ent_d - 1;
  }
}

/* u2_sist_term(): term of a log entry.
*/
c3_w
u2_sist_term(u2_sist* sis_u, c3_d ent_d)
{
  u2_rent ent_u;

  if ( 0 == ent_d ) {
    return 0;
  }
  else {
    u2_sist_rent(sis_u, ent_d - 1, 1, &ent_u);
    free(ent_u.bob_w);  //  XX
    return ent_u.tem_w;
  }
}

/* u2_sist_redo(): append nuu_d log entries after ent_d, retaining.
*/
void
u2_sist_redo(u2_sist* sis_u, c3_d ent_d, c3_d nuu_d, u2_rent* ent_u)
{
  u2_ulog* lug_u = &sis_u->lug_u;
  u2_ular  lar_u;
  c3_d     end_d;
  c3_d     tar_d;
  c3_d     i_d;

  uL(fprintf(uH, "sist_redo: rewriting %llu entries starting at %llu "
             "(cit_d %llu)\n", nuu_d, ent_d, sis_u->cit_d));
  c3_assert(sis_u->cit_d <= ent_d);
  end_d = lug_u->len_d;

  while ( end_d != c3_wiseof(u2_uled) ) {
    tar_d = end_d - c3_wiseof(u2_ular);
    if ( -1 == lseek64(lug_u->fid_i, 4ULL * tar_d, SEEK_SET) ) {
      perror("lseek");
      uL(fprintf(uH, "sist_redo: seek failed\n"));
      c3_assert(0);
    }
    if ( sizeof(lar_u) != read(lug_u->fid_i, &lar_u, sizeof(lar_u)) ) {
      perror("read");
      uL(fprintf(uH, "sist_redo: read failed\n"));
      c3_assert(0);
    }
    c3_assert(sis_u->ent_d == lar_u.ent_d);
    c3_assert(sis_u->lat_w >= lar_u.tem_w);
    sis_u->lat_w = lar_u.tem_w;
    if ( ent_d == lar_u.ent_d ) {
      break;
    }
    else {
      sis_u->ent_d = sis_u->ent_d - 1ULL;
      end_d = tar_d - lar_u.len_w;
    }
  }
  lug_u->len_d = end_d;
  if ( -1 == ftruncate(lug_u->fid_i, 4ULL * lug_u->len_d) ) {
    perror("ftruncate");
    uL(fprintf(uH, "sist_redo: truncate failed\n"));
    c3_assert(0);
  }

  for ( i_d = 0; i_d < nuu_d; i_d++) {
    u2_sist_pack(sis_u, &ent_u[i_d]);
  }
}

/* _sist_suck(): past failure.
*/
static void
_sist_suck(u2_reck* rec_u, u2_noun ovo, u2_noun gon)
{
  uL(fprintf(uH, "sing: ovum failed!\n"));
  {
    c3_c* hed_c = u2_cr_string(u2h(u2t(ovo)));

    uL(fprintf(uH, "fail %s\n", hed_c));
    free(hed_c);
  }

  u2_lo_punt(2, u2_ckb_flop(u2k(u2t(gon))));
  u2_loom_exit();
  u2_lo_exit();

  exit(1);
}

/* _sist_sing(): replay ovum from the past, time already set.
*/
static void
_sist_sing(u2_reck* rec_u, u2_noun ovo)
{
  u2_noun gon = u2_lo_soft(rec_u, 0, u2_reck_poke, u2k(ovo));

  if ( u2_blip != u2h(gon) ) {
    _sist_suck(rec_u, ovo, gon);
  }
  else {
    u2_noun vir = u2k(u2h(u2t(gon)));
    u2_noun cor = u2k(u2t(u2t(gon)));
    u2_noun nug;

    u2z(gon);
    nug = u2_reck_nick(rec_u, vir, cor);

    if ( u2_blip != u2h(nug) ) {
      _sist_suck(rec_u, ovo, nug);
    }
    else {
      vir = u2h(u2t(nug));
      cor = u2k(u2t(u2t(nug)));

      while ( u2_nul != vir ) {
        u2_noun fex = u2h(vir);
        u2_noun fav = u2t(fex);

        if ( (c3__init == u2h(fav)) || (c3__inuk == u2h(fav)) ) {
          rec_u->own = u2nc(u2k(u2t(fav)), rec_u->own);
        }
        vir = u2t(vir);
      }
      u2z(nug);
      u2z(rec_u->roc);
      rec_u->roc = cor;
    }
    u2z(ovo);
  }
}

/* u2_sist_song(): bring core up to date with ent_d.
*/
void
u2_sist_song(u2_sist* sis_u, u2_reck* rec_u, c3_d cit_d)
{
  u2_rent* ent_u;
  u2_noun  ron;
  u2_noun  roe = u2_nul;
  c3_d     i_d;
  c3_d     n_d;

  sis_u->cit_d = c3_min(cit_d, sis_u->ent_d);
  c3_assert(sis_u->cit_d >= rec_u->ent_w);
  if ( sis_u->cit_d == rec_u->ent_w ) {
    //  Nothing to do.
    return;
  }
  else {
    uL(fprintf(uH, "sist: song: playing through %llu\n", sis_u->cit_d));
    n_d = sis_u->cit_d - rec_u->ent_w;
    ent_u = malloc(sizeof(*ent_u) * n_d);
    u2_sist_rent(sis_u, rec_u->ent_w, n_d, ent_u);
    for ( i_d = 1; i_d <= n_d; i_d++ ) {
      u2_rent* cur_u = ent_u + n_d - i_d;

      if ( c3__ov != cur_u->typ_w ) {
        free(cur_u->bob_w);
        continue;
      }
      else {
        ron = u2_ci_words(cur_u->len_w, cur_u->bob_w);
        free(cur_u->bob_w);
        if ( rec_u->key ) {
          u2_noun dep;

          dep = u2_dc("de:crya", u2k(rec_u->key), ron);
          if ( u2_no == u2du(dep) ) {
            uL(fprintf(uH, "sist: song: record is corrupt (k)\n"));
            u2_lo_bail(rec_u);
          }
          else {
            ron = u2k(u2t(dep));
            u2z(dep);
          }
        }
        roe = u2nc(u2_cke_cue(ron), roe);
      }
    }
    free(ent_u);

    if ( u2_nul != roe ) {
      u2_noun rou = roe;
      c3_w    xno_w;

      uL(fprintf(uH, "sist: song: playback starting\n"));

      xno_w = 0;
      while ( u2_nul != roe ) {
        u2_noun i_roe = u2h(roe);
        u2_noun t_roe = u2t(roe);
        u2_noun now = u2h(i_roe);
        u2_noun ovo = u2t(i_roe);

        u2_reck_wind(rec_u, u2k(now));
        if ( u2_yes == u2_Host.ops_u.vno &&
             c3__veer == u2h(u2t(ovo)) ) {
          uL(fprintf(uH, "sist: song: skipped veer\n"));
        }
        else {
          _sist_sing(rec_u, u2k(ovo));
        }

        fputc('.', uH); uL(0);

        roe = t_roe;
        xno_w++;

        if ( 0 == (xno_w % 1000) ) {
          uL(fprintf(uH, "{%d}\n", xno_w));
          u2_lo_grab("song", rou, u2_none);
        }
      }
      u2z(rou);
    }
    uL(fprintf(uH, "\nsist: song: playback complete\n"));
    rec_u->ent_w = sis_u->cit_d;
    c3_assert(rec_u->ent_w == sis_u->cit_d);
  }
}

/* u2_sist_put(): moronic key-value store put.
*/
void
u2_sist_put(const c3_c* key_c, const c3_y* val_y, size_t siz_i)
{
  c3_c ful_c[2048];
  c3_i ret_i;
  c3_i fid_i;

  ret_i = snprintf(ful_c, 2048, "%s/sis/_%s", u2_Host.cpu_c, key_c);
  c3_assert(ret_i < 2048);

  if ( (fid_i = open(ful_c, O_CREAT | O_TRUNC | O_WRONLY, 0600)) < 0 ) {
    uL(fprintf(uH, "sist: could not put %s\n", key_c));
    perror("open");
    u2_lo_bail(u2A);
  }
  if ( (ret_i = write(fid_i, val_y, siz_i)) != siz_i ) {
    uL(fprintf(uH, "sist: could not write %s\n", key_c));
    if ( ret_i < 0 ) {
      perror("write");
    }
    u2_lo_bail(u2A);
  }
  ret_i = c3_sync(fid_i);
  if ( ret_i < 0 ) {
    perror("sync");
  }
  ret_i = close(fid_i);
  c3_assert(0 == ret_i);
}

/* u2_sist_has(): moronic key-value store existence check.
*/
ssize_t
u2_sist_has(const c3_c* key_c)
{
  c3_c        ful_c[2048];
  c3_i        ret_i;
  struct stat sat_u;

  ret_i = snprintf(ful_c, 2048, "%s/sis/_%s", u2_Host.cpu_c, key_c);
  c3_assert(ret_i < 2048);

  if ( (ret_i = stat(ful_c, &sat_u)) < 0 ) {
    if ( errno == ENOENT ) {
      return -1;
    }
    else {
      uL(fprintf(uH, "sist: could not stat %s\n", key_c));
      perror("stat");
      u2_lo_bail(u2A);
    }
  }
  else {
    return sat_u.st_size;
  }
  c3_assert(!"not reached");
}

/* u2_sist_get(): moronic key-value store get.
*/
void
u2_sist_get(const c3_c* key_c, c3_y* val_y)
{
  c3_c        ful_c[2048];
  c3_i        ret_i;
  c3_i        fid_i;
  struct stat sat_u;

  ret_i = snprintf(ful_c, 2048, "%s/sis/_%s", u2_Host.cpu_c, key_c);
  c3_assert(ret_i < 2048);

  if ( (fid_i = open(ful_c, O_RDONLY)) < 0 ) {
    uL(fprintf(uH, "sist: could not get %s\n", key_c));
    perror("open");
    u2_lo_bail(u2A);
  }
  if ( (ret_i = fstat(fid_i, &sat_u)) < 0 ) {
    uL(fprintf(uH, "sist: could not stat %s\n", key_c));
    perror("fstat");
    u2_lo_bail(u2A);
  }
  if ( (ret_i = read(fid_i, val_y, sat_u.st_size)) != sat_u.st_size ) {
    uL(fprintf(uH, "sist: could not read %s\n", key_c));
    if ( ret_i < 0 ) {
      perror("read");
    }
    u2_lo_bail(u2A);
  }
  ret_i = close(fid_i);
  c3_assert(0 == ret_i);
}

/* u2_sist_nil(): moronic key-value store rm.
*/
void
u2_sist_nil(const c3_c* key_c)
{
  c3_c ful_c[2048];
  c3_i ret_i;

  ret_i = snprintf(ful_c, 2048, "%s/sis/_%s", u2_Host.cpu_c, key_c);
  c3_assert(ret_i < 2048);

  if ( (ret_i = unlink(ful_c)) < 0 ) {
    if ( errno == ENOENT ) {
      return;
    }
    else {
      uL(fprintf(uH, "sist: could not unlink %s\n", key_c));
      perror("unlink");
      u2_lo_bail(u2A);
    }
  }
}

/* _sist_home(): create ship directory.
*/
static void
_sist_home(u2_reck* rec_u)
{
  c3_c    ful_c[2048];

  //  Create subdirectories.
  //
  {
    mkdir(u2_Host.cpu_c, 0700);

    snprintf(ful_c, 2048, "%s/get", u2_Host.cpu_c);
    if ( 0 != mkdir(ful_c, 0700) ) {
      perror(ful_c);
      u2_lo_bail(rec_u);
    }

    snprintf(ful_c, 2048, "%s/put", u2_Host.cpu_c);
    if ( 0 != mkdir(ful_c, 0700) ) {
      perror(ful_c);
      u2_lo_bail(rec_u);
    }

    snprintf(ful_c, 2048, "%s/sis", u2_Host.cpu_c);
    if ( 0 != mkdir(ful_c, 0700) ) {
      perror(ful_c);
      u2_lo_bail(rec_u);
    }
  }

  //  Copy urbit.pill.
  //
  {
    snprintf(ful_c, 2048, "cp %s/urbit.pill %s",
                    u2_Host.ops_u.hom_c, u2_Host.cpu_c);
    if ( 0 != system(ful_c) ) {
      uL(fprintf(uH, "could not %s\n", ful_c));
      u2_lo_bail(rec_u);
    }
  }
}

/* _sist_cask(): ask for a passcode.
*/
static u2_noun
_sist_cask(u2_reck* rec_u, c3_c* dir_c, u2_bean nun)
{
  c3_c   paw_c[60];
  u2_noun key;

  uH;
  while ( 1 ) {
    printf("passcode for %s%s? ~", dir_c, (u2_yes == nun) ? " [none]" : "");

    paw_c[0] = 0;
    c3_fpurge(stdin);
    fgets(paw_c, 59, stdin);

    if ( '\n' == paw_c[0] ) {
      if ( u2_yes == nun ) {
        key = 0; break;
      }
      else {
        continue;
      }
    }
    else {
      c3_c* say_c = c3_malloc(strlen(paw_c) + 2);
      u2_noun say;

      say_c[0] = '~';
      say_c[1] = 0;
      strncat(say_c, paw_c, strlen(paw_c) - 1);

      say = u2_do("slay", u2_ci_string(say_c));
      if ( (u2_nul == say) ||
           (u2_blip != u2h(u2t(say))) ||
           ('p' != u2h(u2t(u2t(say)))) )
      {
        printf("invalid passcode\n");
        continue;
      }
      key = u2k(u2t(u2t(u2t(say))));

      u2z(say);
      break;
    }
  }
  uL(0);
  return key;
}

#if 0
/* _sist_bask(): ask a yes or no question.
*/
static u2_bean
_sist_bask(c3_c* pop_c, u2_bean may)
{
  u2_bean yam;

  uH;
  while ( 1 ) {
    c3_c ans_c[3];

    printf("%s [y/n]? ", pop_c);
    ans_c[0] = 0;

    c3_fpurge(stdin);
    fgets(ans_c, 2, stdin);

    if ( (ans_c[0] != 'y') && (ans_c[0] != 'n') ) {
      continue;
    } else {
      yam = (ans_c[0] != 'n') ? u2_yes : u2_no;
      break;
    }
  }
  uL(0);
  return yam;
}
#endif

/* _sist_fast(): offer to save passcode by mug in home directory.
*/
static void
_sist_fast(u2_reck* rec_u, u2_noun pas, c3_l key_l)
{
  c3_c    ful_c[2048];
  c3_c*   hom_c = getenv("HOME");
  u2_noun gum   = u2_dc("scot", 'p', key_l);
  c3_c*   gum_c = u2_cr_string(gum);
  u2_noun yek   = u2_dc("scot", 'p', pas);
  c3_c*   yek_c = u2_cr_string(yek);

  printf("saving passcode in %s/.urbit/%s.txt\r\n", hom_c, gum_c);
  printf("(for real security, write it down and delete the file...)\r\n");
  {
    c3_i fid_i;

    snprintf(ful_c, 2048, "%s/.urbit", hom_c);
    mkdir(ful_c, 0700);

    snprintf(ful_c, 2048, "%s/.urbit/%s.txt", hom_c, gum_c);
    if ( (fid_i = open(ful_c, O_CREAT | O_TRUNC | O_WRONLY, 0600)) < 0 ) {
      uL(fprintf(uH, "fast: could not save %s\n", ful_c));
      u2_lo_bail(rec_u);
    }
    write(fid_i, yek_c, strlen(yek_c));
    close(fid_i);
  }
  free(gum_c);
  u2z(gum);

  free(yek_c);
  u2z(yek);
}

/* _sist_staf(): try to load passcode by mug from home directory.
*/
static u2_noun
_sist_staf(u2_reck* rec_u, c3_l key_l)
{
  c3_c    ful_c[2048];
  c3_c*   hom_c = getenv("HOME");
  u2_noun gum   = u2_dc("scot", 'p', key_l);
  c3_c*   gum_c = u2_cr_string(gum);
  u2_noun txt;

  snprintf(ful_c, 2048, "%s/.urbit/%s.txt", hom_c, gum_c);
  free(gum_c);
  u2z(gum);
  txt = u2_walk_safe(ful_c);

  if ( 0 == txt ) {
    uL(fprintf(uH, "staf: no passcode %s\n", ful_c));
    return 0;
  }
  else {
    // c3_c* txt_c = u2_cr_string(txt);
    u2_noun say = u2_do("slay", txt);
    u2_noun pas;


    if ( (u2_nul == say) ||
         (u2_blip != u2h(u2t(say))) ||
         ('p' != u2h(u2t(u2t(say)))) )
    {
      uL(fprintf(uH, "staf: %s is corrupt\n", ful_c));
      u2z(say);
      return 0;
    }
    uL(fprintf(uH, "loaded passcode from %s\n", ful_c));
    pas = u2k(u2t(u2t(u2t(say))));

    u2z(say);
    return pas;
  }
}

/* _sist_fatt(): stretch a 64-bit passcode to make a 128-bit key.
*/
static u2_noun
_sist_fatt(c3_l sal_l, u2_noun pas)
{
  c3_w i_w;
  u2_noun key = pas;

  //  XX use scrypt() - this is a stupid iterated hash
  //
  for ( i_w = 0; i_w < 32768; i_w++ ) {
    key = u2_dc("shaf", sal_l, key);
  }
  return key;
}

/* _sist_zest(): create a new, empty record.
*/
static void
_sist_zest(u2_sist* sis_u, u2_reck* rec_u)
{
  struct stat buf_b;
  c3_i        fid_i;
  c3_i        ret_i;
  c3_c        ful_c[8192];
  c3_l        sal_l;

  if ( u2_yes == u2_Host.ops_u.nuu ) {
    ret_i = snprintf(ful_c, 8192, "%s/get", u2_Host.cpu_c);
    c3_assert(ret_i < 8192);
    if ( 0 == access(ful_c, 0) ) {
      uL(fprintf(uH, "pier: already built\n"));
      u2_lo_bail(rec_u);
    }
  }

  //  Create the ship directory.
  //
  _sist_home(rec_u);

  //  Create the record file.
  {
    ret_i = snprintf(ful_c, 8192, "%s/egz.hope", u2_Host.cpu_c);
    c3_assert(ret_i < 8192);

    if ( ((fid_i = open(ful_c, O_CREAT | O_WRONLY | O_EXCL, 0600)) < 0) ||
         (fstat(fid_i, &buf_b) < 0) )
    {
      uL(fprintf(uH, "can't create record (%s)\n", ful_c));
      u2_lo_bail(rec_u);
    }
    u2R->sis_u.lug_u.fid_i = fid_i;
  }

  //  Generate a 31-bit salt.
  //
  {
    c3_w rad_w[8];

    u2_lo_rand(rad_w);
    sal_l = (0x7fffffff & rad_w[0]);
  }

  //  Create and save a passcode.
  //
  {
    c3_w rad_w[8];
    u2_noun pas;

    u2_lo_rand(rad_w);
    pas = u2_ci_words(2, rad_w);

    rec_u->key = _sist_fatt(sal_l, u2k(pas));
    _sist_fast(rec_u, pas, u2_mug(rec_u->key));
  }

  //  Write the header.
  {
    u2_uled led_u;

    led_u.mag_l = u2_mug('h');
    led_u.kno_w = rec_u->kno_w;

    if ( 0 == rec_u->key ) {
      led_u.key_l = 0;
    } else {
      led_u.key_l = u2_mug(rec_u->key);

      c3_assert(!(led_u.key_l >> 31));
    }
    led_u.sal_l = sal_l;
    led_u.sev_l = rec_u->sev_l;

    if ( sizeof(led_u) != write(fid_i, &led_u, sizeof(led_u)) ) {
      uL(fprintf(uH, "can't write record (%s)\n", ful_c));
      u2_lo_bail(rec_u);
    }

    u2R->sis_u.lug_u.len_d = c3_wiseof(led_u);
  }
}

/* _sist_rest(): initialize from disk record.
*/
static void
_sist_rest(u2_sist* sis_u, u2_reck* rec_u)
{
  struct stat buf_b;
  c3_i        fid_i;
  c3_c        ful_c[2048];
  u2_noun     sev_l, tno_l, key_l, sal_l;

  //  Open the fscking file.  Does it even exist?
  {
    snprintf(ful_c, 2048, "%s/egz.hope", u2_Host.cpu_c);

    if ( ((fid_i = open(ful_c, O_RDWR)) < 0) ||
         (fstat(fid_i, &buf_b) < 0) )
    {
      uL(fprintf(uH, "rest: can't open record (%s)\n", ful_c));
      u2_lo_bail(rec_u);

      return;
    }
    u2R->sis_u.lug_u.fid_i = fid_i;
    u2R->sis_u.lug_u.len_d = ((buf_b.st_size + 3ULL) >> 2ULL);
  }

  //  Check the fscking header.  It's probably corrupt.
  {
    u2_uled led_u;

    if ( sizeof(led_u) != read(fid_i, &led_u, sizeof(led_u)) ) {
      uL(fprintf(uH, "record (%s) is corrupt (a)\n", ful_c));
      u2_lo_bail(rec_u);
    }

    if (u2_mug('h') != led_u.mag_l ) {
      uL(fprintf(uH, "record (%s) is obsolete (or corrupt)\n", ful_c));
      u2_lo_bail(rec_u);
    }

    if ( led_u.kno_w != rec_u->kno_w ) {
      //  XX perhaps we should actually do something here
      //
      uL(fprintf(uH, "rest: (not) translating events (old %d, now %d)\n",
                     led_u.kno_w,
                     rec_u->kno_w));
    }
    sev_l = led_u.sev_l;
    sal_l = led_u.sal_l;
    key_l = led_u.key_l;
    tno_l = led_u.tno_l;

    {
      u2_noun old = u2_dc("scot", c3__uv, sev_l);
      u2_noun nuu = u2_dc("scot", c3__uv, rec_u->sev_l);
      c3_c* old_c = u2_cr_string(old);
      c3_c* nuu_c = u2_cr_string(nuu);

      uL(fprintf(uH, "rest: old %s, new %s\n", old_c, nuu_c));
      free(old_c); free(nuu_c);

      u2z(old); u2z(nuu);
    }
    c3_assert(sev_l != rec_u->sev_l);   //  1 in 2 billion, just retry
  }

  //  Oh, and let's hope you didn't forget the fscking passcode.
  {
    if ( 0 != key_l ) {
      u2_noun pas = _sist_staf(rec_u, key_l);
      u2_noun key;

      while ( 1 ) {
        pas = pas ? pas : _sist_cask(rec_u, u2_Host.cpu_c, u2_no);

        key = _sist_fatt(sal_l, pas);

        if ( u2_mug(key) != key_l ) {
          uL(fprintf(uH, "incorrect passcode\n"));
          u2z(key);
          pas = 0;
        }
        else {
          u2z(rec_u->key);
          rec_u->key = key;
          break;
        }
      }
    }
  }

  //  Read the last event sequence number. It's probably wrong.
  {
    c3_d     end_d = u2R->sis_u.lug_u.len_d;
    c3_d     tar_d = end_d - (c3_d)c3_wiseof(u2_ular);
    u2_ular  lar_u;

    if ( -1 == lseek64(fid_i, 4ULL * end_d, SEEK_SET) ) {
      fprintf(stderr, "end_d %llx\n", end_d);
      perror("lseek");
      uL(fprintf(uH, "record (%s) is corrupt (c)\n", ful_c));
      u2_lo_bail(rec_u);
    }

    if ( -1 == lseek64(fid_i, 4ULL * tar_d, SEEK_SET) ) {
      uL(fprintf(uH, "record (%s) is corrupt (d)\n", ful_c));
      u2_lo_bail(rec_u);
    }
    if ( sizeof(u2_ular) != read(fid_i, &lar_u, sizeof(u2_ular)) ) {
      uL(fprintf(uH, "record (%s) is corrupt (e)\n", ful_c));
      u2_lo_bail(rec_u);
    }

    u2R->sis_u.ent_d = lar_u.ent_d;
    u2R->sis_u.lat_w = lar_u.tem_w;
  }

  //  Replay the events.
  //u2_sist_song(&u2R->sis_u, rec_u, u2R->sis_u.ent_d);

#if 0
  //  If you see this error, your record is totally fscking broken!
  //  Which probably serves you right.  Please consult a consultant.
  {
    if ( u2_nul == rec_u->own ) {
      uL(fprintf(uH, "record did not install a master!\n"));
      u2_lo_bail(rec_u);
    }
    rec_u->our = u2k(u2h(rec_u->own));
    rec_u->pod = u2_dc("scot", 'p', u2k(rec_u->our)));
  }

  //  Now, who the fsck are you?  No, really.
  {
    u2_noun who;
    c3_c*   fil_c;
    c3_c*   who_c;

    if ( (fil_c = strrchr(u2_Host.cpu_c, '/')) ) {
      fil_c++;
    } else fil_c = u2_Host.cpu_c;

    who = u2_dc("scot", 'p', u2k(rec_u->our)));
    who_c = u2_cr_string(who);
    u2z(who);

    if ( strncmp(fil_c, who_c + 1, strlen(fil_c)) ) {
      uL(fprintf(uH, "record master (%s) does not match filename!\n", who_c));
      u2_lo_bail(rec_u);
    }
    free(who_c);
  }
#endif

  //  Rewrite the header.  Will probably corrupt the record.
  {
    u2_uled led_u;

    led_u.mag_l = u2_mug('h');
    led_u.sal_l = sal_l;
    led_u.sev_l = rec_u->sev_l;
    led_u.key_l = rec_u->key ? u2_mug(rec_u->key) : 0;
    led_u.kno_w = rec_u->kno_w;         //  may need actual translation!
    led_u.tno_l = 1;

    if ( (-1 == lseek64(fid_i, 0, SEEK_SET)) ||
         (sizeof(led_u) != write(fid_i, &led_u, sizeof(led_u))) )
    {
      uL(fprintf(uH, "record (%s) failed to rewrite\n", ful_c));
      u2_lo_bail(rec_u);
    }
  }
}

/* u2_sist_boot(): restore or create.
*/
void
u2_sist_boot(void)
{
  u2_sist* sis_u = &u2R->sis_u;

  uL(fprintf(uH, "sist: booting\n"));
  if ( u2_yes == u2_Host.ops_u.nuu ) {
    _sist_zest(sis_u, u2A);
  }
  else {
    _sist_rest(sis_u, u2A);
  }
}
