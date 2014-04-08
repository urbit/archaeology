/* v/save.c
**
** This file is in the public domain.
*/
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <unistd.h>
#include <setjmp.h>
#include <gmp.h>
#include <stdint.h>
#include <termios.h>
#include <uv.h>

#include "all.h"
#include "v/vere.h"

/* u2_save_io_init(): initialize autosave.
*/
void
u2_save_io_init(void)
{
}

/* u2_save_io_exit(): terminate save I/O.
*/
void
u2_save_io_exit(void)
{
}

/* u2_save_io_poll(): poll kernel for save I/O.
*/
void
u2_save_io_poll(void)
{
}

