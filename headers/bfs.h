//File bfs.h

#ifndef BFS
#define BFS

#include "structs.h"
#include "index.h"
#include "buffer.h"

//#define UNVISITED -1
//#define END_NODE -2

#define INITIAL_QUEUE_SIZE 1000000
#define DEPTH -1

OK_SUCCESS initializeQueue(queue *q, int size);
void push(queue *q, int nodeID);
int pop(queue *q);

int bBFS(NodeIndex *outIndex, Buffer *outBuffer, NodeIndex *inIndex, Buffer *inBuffer, int start, int goal, BFSVisitedData*, queue*, queue*);
//pathNode *pathfinder(int *forwardParentArray, int *backwardParentArray, int midpoint);
//int pathLength(pathNode *start);
void deleteBFS(int *forwardParentArray, int *backwardParentArray, queue *forwardQueue, queue *backwardQueue);

OK_SUCCESS initializeVisited(BFSVisitedData *visited, int size);
void deleteVisited(BFSVisitedData *visited);
OK_SUCCESS checkNeighbors(BFSVisitedData *visited, queue *q, char direction, node *listNode);

#endif
