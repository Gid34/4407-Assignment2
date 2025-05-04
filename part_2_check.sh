#!/bin/bash

# part_2_check.sh - Verify cleaned TSV files match expected samples

# Color codes for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to compare files with detailed output
compare_files() {
    local generated="$1"
    local reference="$2"
    local test_name="$3"
    
    echo -e "\n=== Verifying ${test_name} ==="
    
    if [ ! -f "$generated" ] || [ ! -f "$reference" ]; then
        echo -e "${RED}ERROR: Missing files for comparison${NC}"
        [ ! -f "$generated" ] && echo "File not found: $generated"
        [ ! -f "$reference" ] && echo "File not found: $reference"
        return 1
    fi

    if diff -q "$generated" "$reference" >/dev/null; then
        echo -e "${GREEN}SUCCESS: Files match perfectly${NC}"
        echo "Generated file: $(stat -c%s "$generated") bytes"
        echo "Reference file: $(stat -c%s "$reference") bytes"
        return 0
    else
        echo -e "${RED}ERROR: Files differ${NC}"
        echo "Differences:"
        diff --color=always -u "$reference" "$generated" | head -n 20
        echo ""
        echo "Generated file: $(stat -c%s "$generated") bytes"
        echo "Reference file: $(stat -c%s "$reference") bytes"
        return 1
    fi
}

# Main comparison logic
echo "Starting Part 2 Validation Checks"
echo "--------------------------------"

# Compare sample1 files
compare_files "cleaned_sample1.tsv" "sample1.tsv" "Sample 1 Validation"

# Compare sample files
compare_files "cleaned_sample.tsv" "sample.tsv" "Sample Validation"

# Final status
if [ $? -eq 0 ]; then
    echo -e "\n${GREEN}All tests passed successfully${NC}"
else
    echo -e "\n${RED}Some tests failed${NC}"
fi

exit 0