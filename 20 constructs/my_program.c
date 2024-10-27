#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef int ElementType;

struct SortStats {
    int comparisons;
    int swaps;
};

// Function prototypes
void insertionSort(ElementType arr[], int n, struct SortStats *stats);
void quickSort(ElementType arr[], int low, int high, struct SortStats *stats);
int partition(ElementType arr[], int low, int high, struct SortStats *stats);
void printArray(ElementType arr[], int size);
void writeStatsToFile(struct SortStats stats, const char *algorithm);
void swap(ElementType *a, ElementType *b, struct SortStats *stats);

int main() {
    // Variable declaration
    int choice;

    // Array
    ElementType data[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(data) / sizeof(data[0]);

    // Initialize structure to track stats
    struct SortStats stats = {0, 0};

    printf("Original array:\n");
    printArray(data, n);

    // User input
    printf("Array: {64, 34, 25, 12, 22, 11, 90}\n");
    printf("Choose a sorting algorithm:\n");
    printf("1. Quick Sort\n");
    printf("2. Insertion Sort\n");
    printf("Enter your choice (1-2): ");
    scanf("%d", &choice);

    // switch for pickign sorting algorithm
    switch (choice) {
        case 1:
            quickSort(data, 0, n - 1, &stats);
            writeStatsToFile(stats, "Quick Sort");
            break;
        case 2:
            insertionSort(data, n, &stats);
            writeStatsToFile(stats, "Insertion Sort");
            break;
        default:
            printf("Invalid choice.\n");
            return 0;
    }

    printf("Sorted array:\n");
    printArray(data, n);
    return 0;
}

void insertionSort(ElementType arr[], int n, struct SortStats *stats) {
    int i, j;
    ElementType key;
    for (i = 1; i < n; i++) {
        key = arr[i];
        j = i - 1;
        while (j >= 0 && arr[j] > key) {
            stats->comparisons++;
            arr[j + 1] = arr[j];
            stats->swaps++;
            j--;
        }
        arr[j + 1] = key;
    }
}

// Partition  for quicksort
int partition(ElementType arr[], int low, int high, struct SortStats *stats) {
    ElementType pivot = arr[high];  
    int i = (low - 1);              
    for (int j = low; j < high; j++) {
        stats->comparisons++;
        if (arr[j] < pivot) {
            i++;
            swap(&arr[i], &arr[j], stats);
        }
    }
    swap(&arr[i + 1], &arr[high], stats);
    return (i + 1);
}

void quickSort(ElementType arr[], int low, int high, struct SortStats *stats) {
    if (low < high) {
        int pi = partition(arr, low, high, stats);  
        quickSort(arr, low, pi - 1, stats);
        quickSort(arr, pi + 1, high, stats);
    }
}

void swap(ElementType *a, ElementType *b, struct SortStats *stats) {
    ElementType temp = *a;
    *a = *b;
    *b = temp;
    stats->swaps++;
}

void printArray(ElementType arr[], int size) {
    for (int i = 0; i < size; i++)
        printf("%d ", arr[i]);
    printf("\n");
}
void writeStatsToFile(struct SortStats stats, const char *algorithm) {
    FILE *fp = fopen("sort_stats.txt", "a");
    if (fp != NULL) {
        fprintf(fp, "%s:\n", algorithm);
        fprintf(fp, "Comparisons: %d\n", stats.comparisons);
        fprintf(fp, "Swaps: %d\n\n", stats.swaps);
        fclose(fp);
        printf("Sorting stats written to file.\n");
    } else {
        printf("Failed to open file for writing.\n");
    }
}
