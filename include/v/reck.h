/* v/reck.h
**
** This file is in the public domain.
*/
typedef struct _u2_pock {
  c3_w    nam_m;    //  discriminant %boot|%blew|%hail|%hear|%wake...
  union {
    struct _born {
    } born;
    struct _they {
      c3_l  num_l;  //  connection number
      c3_w  sas_w;  //  status
      void* hed_u;  //  headers
      void* bod_u;  //  body
    } they;
    struct _this {
      void* req_u;  //  u2_hreq
    } this;
    struct _hear {
      c3_w  aty_w;  //  address type %if|%is (%is not supported)
      c3_s  por_s;  //  port short
      c3_w  pip_w;  //  v4 address
      c3_w  len_w;  //  buffer length for future noun conversion
      c3_c* buf_u;  //  data buffer
    } hear;
    struct _term {
      c3_w  num_w;  //  terminal number for pax
      c3_w  len_w;  //  term buffer length
      c3_c* buf_u;  //  term buffer
    } term;
  };
} u2_pock;

typedef struct _u2_plan {
  struct _u2_plan* nex_u;  //  next in q

  c3_w     met_m;  //  %gold|%iron|%lead
  c3_w     van_m;  //  %ames|%batz|%clay|%http|%term
  u2_pock  poc;    //  some structure somehow representing C-to-arvo data
} u2_plan;

void
u2_reck_plam(u2_plan* pan_u);
