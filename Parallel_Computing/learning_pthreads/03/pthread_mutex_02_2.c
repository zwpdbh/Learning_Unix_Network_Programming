//
// Created by zwpdbh on 19/12/2017.
//

//
// Created by zwpdbh on 18/12/2017.
//

#include <stdlib.h>
#include <pthread.h>

#define n_hash 29
#define HASH(id) (((unsigned long) id) % n_hash)

struct foo *fh[n_hash];
pthread_mutex_t hashlock = PTHREAD_MUTEX_INITIALIZER;

struct foo {
    int f_count;
    pthread_mutex_t f_lock; // also protected by hashlock
    int f_id;
    struct foo* f_next; // protected by hashlock
};

/* allocate the object*/
struct foo * fool_alloc(int id) {
    struct foo* fp;
    int idx;

    if ((fp = malloc(sizeof(struct foo))) != NULL) {
        fp->f_count = 1;
        fp->f_id = id;
        if (pthread_mutex_init(&fp->f_lock, NULL) != 0) {
            free(fp);
            return NULL;
        }
        idx = HASH(id);
        pthread_mutex_lock(&hashlock);
        fp->f_next = fh[idx];
        fh[idx] = fp;
        /**before unlocking the hash list lock, locks the mutex in the new structure.
         * Since the new structure is placed on a global list, other threads can find it,
         * so we need to block them if they try to access
         * the new structure, until we are done initializing it.*/
        pthread_mutex_lock(&fp->f_lock);
        pthread_mutex_unlock(&hashlock);
        pthread_mutex_unlock(&fp->f_lock);
    }

    return fp;
}

/* add a reference to the object */
void foo_hold(struct foo* fp) {
    pthread_mutex_lock(&hashlock);
    fp->f_count += 1;
    pthread_mutex_unlock(&hashlock);
}

/*find an existing object*/
struct foo* foo_find(int id) {
    struct foo *fp;
    pthread_mutex_lock(&hashlock);
    for (fp = fh[HASH(id)]; fp != NULL; fp = fp->f_next) {
        if (fp->f_id == id) {
            foo_hold(fp);
            break;
        }
    }
    pthread_mutex_unlock(&hashlock);
    return fp;
}


/* release a reference to the object*/
void foo_release(struct foo* fp) {
    struct foo* tfp;
    int idx;

    pthread_mutex_lock(&hashlock);

    if (fp->f_count == 1) {
        /* last reference, remove from list*/
        idx = HASH(fp->f_id);
        tfp = fh[idx];
        if (tfp == fp) {
            fh[idx] = fp->f_next;
        } else {
            while (tfp->f_next != fp) {
                tfp = tfp->f_next;
            }
            tfp->f_next = fp->f_next;
        }
        pthread_mutex_unlock(&hashlock);
        pthread_mutex_destroy(&fp->f_lock);
        free(fp);
    } else {
        fp->f_count -= 1;
        pthread_mutex_unlock(&hashlock);
    }
}

int main(void) {
    return 0;
}