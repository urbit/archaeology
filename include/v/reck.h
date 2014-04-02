/* v/reck.h
**
** This file is in the public domain.
*/
typedef struct _u2_pock {
  c3_w    nam_m;  //  %$|%boot|%blew|%hail|%hear|%wake...
  union {
    struct {
      c3_l  num_l;  //  connection number
      c3_w  sas_w;  //  status
      void* hed_u;  //  headers
      void* bod_u;  //  body
    } they;
    struct {
      c3_w  aty_w;  //  address type %if|%is (%is not supported)
      c3_s  por_s;  //  port short
      c3_w  pip_w;  //  v4 address
      c3_w  len_w;  //  buffer length for future noun conversion
      c3_c* buf_u;  //  data buffer
    } hear;
  };
} u2_pock;

typedef struct _u2_plan {
  c3_w     typ_m;  //  %ames|%batz|%clay|%cttp|%http|%term
  u2_noun  pax;    //  static path to arvo-side handler
  u2_pock  poc;    //  some structure somehow representing C-to-arvo data
} u2_plan;

void
u2_reck_plam(u2_reck* rec_u, u2_plan* pan_u);
