#!/bin/bash

# Define the folder containing the PDF reports
REPORTS_FOLDER="reports"

# Create a Markdown output folder (optional)
mkdir -p "$REPORTS_FOLDER/md"

# Loop through all PDF files in the folder and convert them to Markdown
for pdf_file in "$REPORTS_FOLDER"/*.pdf; do
    # Extract filename without extension
    filename=$(basename -- "$pdf_file" .pdf)
    
    # Convert PDF to Markdown
    pandoc "$pdf_file" -o "$REPORTS_FOLDER/md/$filename.md"
    
    echo "Converted: $pdf_file → $REPORTS_FOLDER/md/$filename.md"
done

echo "All PDFs have been converted to Markdown."
