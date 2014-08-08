/* v/http.c
**
** This file is in the public domain.
*/
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <unistd.h>
#include <setjmp.h>
#include <gmp.h>
#include <stdint.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <uv.h>
#include <errno.h>
#include <curses.h>
#include <termios.h>
#include <term.h>

#include "all.h"
#include "v/vere.h"
#include "f/coal.h"

struct u2_noun_buf {
    uint32_t *buf;
    uint32_t len;
};

struct u2_lant {
    struct u2_noun_buf port;
    struct u2_noun_buf ip;
};

struct u2_tcpu_connect {
    uv_connect_t uv_con;
    struct u2_noun_buf id;
    struct u2_lant lan;
};

struct u2_tock {
    struct u2_lant lan;
    struct u2_noun_buf id;
};

struct u2_tcpu_send {
    uv_write_t w;
    struct u2_tock t;
    uv_buf_t b;
};

struct u2_noun_buf
u2_noun_buf_get(u2_noun non) {
    uint32_t len = u2_cr_met(5, non);
    struct u2_noun_buf buf;
    buf.len = len;
    buf.buf = malloc(sizeof(c3_w) * len);
    u2_cr_words(0, len, buf.buf, non);
    return buf;
}

u2_noun u2_noun_buf_put(struct u2_noun_buf buf) {
    return u2_ci_words(buf.len, buf.buf);
}

struct u2_lant u2_lant_get(u2_noun lan) {
    struct u2_lant str;
    str.port = u2_noun_buf_get(u2h(lan));
    str.ip = u2_noun_buf_get(u2t(lan));
    return str;
}

/* last is always garbage */
struct u2_tock_list {
    uv_stream_t *s; /* tock is s->data */
    struct u2_tock_list *n;
};

static struct u2_tock_list *tocks;

u2_noun u2_lant_put(struct u2_lant lan) {
    return u2nc(u2_noun_buf_put(lan.port), u2_noun_buf_put(lan.ip));
}

/* doesn't free actual struct, just all the bufs */
void u2_free_tock(struct u2_tock t) {
    free(t.id.buf);
    free(t.lan.ip.buf);
    free(t.lan.port.buf);
}

char u2_tock_compare(struct u2_tock t1, struct u2_tock t2) {
    //if(t1.id.len != t2.id.len) return 0;
    //return !memcmp(t1.id.buf, t2.id.buf, t1.id.len * sizeof(uint32_t));
    return u2_yes == u2_sing(u2_noun_buf_put(t1.id), u2_noun_buf_put(t2.id));
}

/* warn: tock becomes useless after */
void u2_remove_tock(struct u2_tock t) {
    if(tocks->n == NULL) return;  /* empty */
    struct u2_tock_list *cur = tocks;
    /* edge case */
    struct u2_tock *zar = cur->s->data;
    if(u2_tock_compare(t, *zar)) {
        u2_free_tock(*zar);
        tocks = cur->n;
        free(cur);
        return;
    }
    /* normal case */
    while(cur->n != NULL) {
        if(cur->n->n == NULL) break; /* ignore last */
        zar = cur->n->s->data;
        if(u2_tock_compare(t, *zar)) {
            u2_free_tock(*zar);
            free(cur->n);
            cur->n = cur->n->n;
            return;
        }

        cur = cur->n;
    }
    /* only if not found, otherwise this is double free */
    u2_free_tock(t);
}

uv_stream_t *u2_find_tock(struct u2_tock t) {  /* NULL = not found */
    struct u2_tock_list *cur = tocks;
    while(cur->n != NULL) {  /* ignore last */
        struct u2_tock *zar = cur->s->data;
        if(u2_tock_compare(t, *zar)) {
            return cur->s;
        }

        cur = cur->n;
    }
    
    return NULL;
}

struct u2_noun_buf u2_next_socket(void) {
    if(tocks->n == NULL) return u2_noun_buf_get(0);
    struct u2_tock *tock = tocks->s->data;
    return u2_noun_buf_get(u2_cka_add(1, u2_noun_buf_put(tock->id)));
}

/***/
void
u2_iris_ef_bake(void)
{ 
  u2_noun pax = u2nq(u2_blip, c3__tcpu, u2k(u2A->sen), u2_nul);

  tocks = malloc(sizeof(*tocks));

  u2_reck_plan(u2A, pax, u2nc(c3__star, u2_nul));
}

uv_buf_t _iris_alloc(uv_handle_t* handle, size_t siz) {
  void *ptr_v = c3_malloc(siz);
  return uv_buf_init(ptr_v, siz);
}

void _u2_tock_close_cb(uv_handle_t *stream) {
    struct u2_tock *tock = (struct u2_tock *)stream->data;
    u2_noun zar = u2nc(u2_lant_put(tock->lan), u2_noun_buf_put(tock->id));
    u2_remove_tock(*tock); /* tock now useless */
    free(tock); /* free data from stream */
    u2_noun pax = u2nq(u2_blip, c3__tcpu, u2k(u2A->sen), u2_nul);
    u2_reck_plan(u2A, pax, u2nc(c3__done, zar));
}

void _u2_dock_close_cb(uv_handle_t *stream) {
    struct u2_tock *tock = (struct u2_tock *)stream->data;
    u2_noun zar = u2nc(u2_noun_buf_put(tock->lan.port), u2_noun_buf_put(tock->id));
    u2_remove_tock(*tock); /* tock now useless */
    free(tock); /* free data from stream */
    u2_noun pax = u2nq(u2_blip, c3__tcpu, u2k(u2A->sen), u2_nul);
    u2_reck_plan(u2A, pax, u2nc(c3__gone, zar));
}

void _u2_iris_recv_cb(uv_stream_t *stream, ssize_t nread, uv_buf_t buf) {
    struct u2_tock *tock = (struct u2_tock *)stream->data;
    u2_noun pax = u2nq(u2_blip, c3__tcpu, u2k(u2A->sen), u2_nul);
    if(nread < 0) {
        uv_close((uv_handle_t*) stream, _u2_tock_close_cb);
        return;
    }

    u2_noun msg = u2_ci_bytes((c3_w)nread, (c3_y*)buf.base);
    u2_reck_plan(u2A, pax, u2nt(
        c3__hear,
        u2nc(u2_lant_put(tock->lan), u2_noun_buf_put(tock->id)),
        msg));  // XX
    
    free(buf.base);
}

void _u2_iris_connect_cb(uv_connect_t *connect, int status) {
    struct u2_tcpu_connect *tcpu_connect =
        (struct u2_tcpu_connect *)connect;

    u2_noun pax = u2nq(u2_blip, c3__tcpu, u2k(u2A->sen), u2_nul);
    if(status) {
        //printf("iris: failed to connect\r\n");
        u2_reck_plan(u2A, pax, u2nq(
            c3__cone,
            u2_lant_put(tcpu_connect->lan), 
            u2_noun_buf_put(tcpu_connect->id),
            u2_nul));
        return;
    }

    struct u2_tock *tock = malloc(sizeof(*tock));
    tock->id = u2_next_socket();
    tock->lan = tcpu_connect->lan;
    connect->handle->data = tock;

    struct u2_tock_list *lis = malloc(sizeof(*lis));
    lis->s = connect->handle;
    lis->n = tocks;
    tocks = lis;

    uv_read_start(connect->handle, _iris_alloc, _u2_iris_recv_cb);
    //printf("iris: now bound\r\n");

    u2_reck_plan(u2A, pax, u2nq(
        c3__cone,
        u2_lant_put(tcpu_connect->lan),
        u2_noun_buf_put(tcpu_connect->id),
        u2nc(u2_nul, u2_noun_buf_put(tock->id))));
}

void
u2_iris_ef_connect(u2_noun gif)
{
    //printf("iris: attempting connect\r\n");
    u2_noun lan = u2h(gif);
    u2_noun id = u2t(gif);
    c3_s por = u2_cr_word(0, u2h(lan));
    c3_w addr = u2_cr_word(0, u2t(lan));

    uv_tcp_t* socket = (uv_tcp_t*)malloc(sizeof(uv_tcp_t));
    uv_tcp_init(u2L, socket);

    struct u2_tcpu_connect* connect = malloc(sizeof(struct u2_tcpu_connect));
    connect->id = u2_noun_buf_get(id); //  XX choose better
    connect->lan = u2_lant_get(lan);

    struct sockaddr_in dest;
    memset(&dest, 0, sizeof(dest));
    dest.sin_family = AF_INET;
    dest.sin_addr.s_addr = htonl(addr);
    dest.sin_port = htons(por);
    uv_tcp_connect((uv_connect_t *) connect,
        socket, dest, _u2_iris_connect_cb);
}

void
_u2_iris_ef_write_cb(uv_write_t *req, int status) {
    if(status) {
        //printf("iris: failed write, closing stream\r\n");
        uv_close((uv_handle_t *)req->handle, _u2_tock_close_cb);
        return;
    }

    //printf("iris: write sent\r\n");

    struct u2_tcpu_send *sen = (struct u2_tcpu_send *)req;
    u2_noun zar = u2_ci_bytes(sen->b.len, (unsigned char *)sen->b.base);
    u2_noun pax = u2nq(u2_blip, c3__tcpu, u2k(u2A->sen), u2_nul);
    u2_reck_plan(u2A, pax, u2nt(
        c3__sent, 
        u2nc(u2_lant_put(sen->t.lan), u2_noun_buf_put(sen->t.id)),
        zar));
    free(sen);
}

void
u2_iris_ef_send(u2_noun gif)
{
    //printf("iris: ef send\r\n");
    struct u2_tock tock;

    tock.lan = u2_lant_get(u2h(u2h(gif)));
    tock.id = u2_noun_buf_get(u2t(u2h(gif)));
    //printf("iris: ef find tock\r\n");

    uv_stream_t *stream = u2_find_tock(tock);
    if(stream == NULL) { /* stream disappared, probably because of reboot */
        printf("iris: dead stream\r\n");
        u2_noun zar = u2nc(u2_lant_put(tock.lan), u2_noun_buf_put(tock.id));
        u2_noun pax = u2nq(u2_blip, c3__tcpu, u2k(u2A->sen), u2_nul);
        u2_reck_plan(u2A, pax, u2nc(c3__done, zar));
        u2_free_tock(tock);
        return;
    }

    //printf("iris: found tock\r\n");
    c3_w len = u2_cr_met(3, u2t(gif));
    char *buf = malloc(len);
    u2_cr_bytes(0, len, (unsigned char *)buf, u2t(gif));

    uv_buf_t ubuf = uv_buf_init(buf, len);

    struct u2_tcpu_send *sen = malloc(sizeof(*sen));
    sen->b = ubuf;
    sen->t = *((struct u2_tock *)stream->data);
    uv_write((uv_write_t *)sen, stream, &ubuf, 1, _u2_iris_ef_write_cb);
    u2_free_tock(tock);
}

void
u2_iris_ef_drop(u2_noun gif)
{
    struct u2_tock tock;
    tock.lan = u2_lant_get(u2h(gif));
    tock.id = u2_noun_buf_get(u2t(gif));

    uv_stream_t *stream = u2_find_tock(tock);
    if(stream == NULL) return;

    /* will send %done */
    uv_close((uv_handle_t *)stream, _u2_tock_close_cb);
}

void
u2_iris_ef_stop(u2_noun gif)
{
    struct u2_tock tock;
    tock.lan.ip = u2_noun_buf_get(0);
    tock.lan.port = u2_noun_buf_get(u2h(gif));
    tock.id = u2_noun_buf_get(u2t(gif));

    uv_stream_t *stream = u2_find_tock(tock);
    if(stream == NULL) return;

    /* will send %done */
    uv_close((uv_handle_t *)stream, _u2_dock_close_cb);
}

void
_u2_iris_accept_cb(uv_stream_t *server, int status) {
    if(status < 0)  {
        printf("iris: accept fail [???]\r\n");
        return;
    }

    uv_tcp_t *client = (uv_tcp_t *)malloc(sizeof(uv_tcp_t));
    uv_tcp_init(u2L, client);
    if(uv_accept(server, (uv_stream_t *)client) == 0) {
        /* generate a tock for client */
        printf("iris: accept client\r\n");

        struct u2_tock *bock = server->data;
        struct u2_tock *tock = malloc(sizeof(*tock));
        tock->id = u2_next_socket();
        tock->lan.port = u2_noun_buf_get(u2_noun_buf_put(bock->lan.port));
        tock->lan.ip = u2_noun_buf_get(0);  // XX HOW
        client->data = tock;

        struct u2_tock_list *lis = malloc(sizeof(*lis));
        lis->s = (uv_stream_t *)client;
        lis->n = tocks;
        tocks = lis;

        uv_read_start((uv_stream_t *)client, _iris_alloc, _u2_iris_recv_cb);
        
        u2_noun dock = u2nc(
            u2_noun_buf_put(bock->lan.port),
            u2_noun_buf_put(bock->id));

        u2_noun pax = u2nq(u2_blip, c3__tcpu, u2k(u2A->sen), u2_nul);
        u2_reck_plan(u2A, pax, u2nt(
            c3__tick,
            dock,
            u2nc(u2_lant_put(tock->lan), u2_noun_buf_put(tock->id))));
        
        printf("iris: accepted client\r\n");
    }
    else {
        /* supposedly guaranteed to never happen or something */
        uv_close((uv_handle_t *)client, NULL);
    }
}

void
u2_iris_ef_bind(u2_noun gif)
{
    c3_s por = u2_cr_word(0, u2h(gif));

    uv_tcp_t *server = malloc(sizeof(*server));
    uv_tcp_init(u2L, server);

    printf("iris: binding to %d\r\n", por);
    struct sockaddr_in bind_addr = uv_ip4_addr("127.0.0.1", por);
    uv_tcp_bind(server, bind_addr);
    printf("iris: listening on %d\r\n", por);
    int res = uv_listen((uv_stream_t*)server, 128, _u2_iris_accept_cb);
    if(res) {
        printf("iris: bind fail\r\n");
        u2_noun pax = u2nq(u2_blip, c3__tcpu, u2k(u2A->sen), u2_nul);
        u2_reck_plan(u2A, pax, u2nq(
           c3__bond, 
           u2h(gif),
           u2t(gif),
           u2_nul));
        return;
    }
    printf("iris: bound to %d\r\n", por);

    /* assign like its a normal socket, kinda a hack */
    struct u2_tock *tock = malloc(sizeof(*tock));
    tock->id = u2_next_socket();
    tock->lan.ip = u2_noun_buf_get(0);
    tock->lan.port = u2_noun_buf_get(u2h(gif));
    server->data = tock;

    struct u2_tock_list *lis = tocks;
    lis->s = (uv_stream_t*)server;
    lis->n = tocks;
    tocks = lis;

    u2_noun pax = u2nq(u2_blip, c3__tcpu, u2k(u2A->sen), u2_nul);
    u2_reck_plan(u2A, pax, u2nq(
       c3__bond, 
       u2h(gif),
       u2t(gif),
       u2nc(u2_nul, u2_noun_buf_put(tock->id))));
}
