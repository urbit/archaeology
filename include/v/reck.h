/* v/reck.h
**
** This file is in the public domain.
*/
typedef struct _u2_pock {
  c3_w    nam_m;  //  %$|%wake|%boot|%blew|%hail...
  union {
    struct {
      c3_l  num_l;
      c3_w  sas_w;
      void* hed_u;
      void* bod_u;
    } they;
  };
} u2_pock;
typedef struct _u2_plan {
  c3_w     typ_m;  //  %ames|%batz|%clay|%cttp|%http|%term
  u2_noun  pax;    //  static path to arvo-side handler
  u2_pock  poc;    //  some structure somehow representing C-to-arvo data
} u2_plan;
